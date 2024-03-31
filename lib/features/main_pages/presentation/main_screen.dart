import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_parser/http_parser.dart';
import 'package:quranku_pintar/common/extensions/font_weight.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/helper.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/rule.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:translator/translator.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    super.initState();
    _initSpeech();
    panggilSuratByNomor();
  }

  panggilSuratByNomor() {
    setState(() {
      context.read<MainBloc>().add(const GetDetailSurat(2));
    });
  }

  String removeDiacritics(String text) {
    return text.replaceAll(
        RegExp(
            r'[\u0610-\u061A\u064B-\u065F\u0670\u06D6-\u06ED\u08D3-\u08E1\u08E3-\u08FF\uFB50-\uFDCF\uFDF0-\uFDFF\uFE70-\uFEFC]'),
        '');
  }

  bool isListening = false;

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    log('ok');
    setState(() {
      _lastWords = '';
      _speechEnabled = true;
    });
    await _speechToText.listen(localeId: 'ar', onResult: _onSpeechResult);
  }

  String remove() {
    return '';
  }

  void _stopListening() async {
    await _speechToText.stop();
    log('sesi stop');

    await Future.delayed(const Duration(seconds: 109));
    setState(() {
      _ditemukan = false;
      r = remove();
      _lastWords = '';
    });

    log('normalisasi voice $_lastWords');
    log('compare ke $r');
    if (removeDiacritics(_lastWords) != r) {
      log('ok tidak sama');
    } else {
      log('sama');
    }
    _speechEnabled = false;
  }

  final translator = GoogleTranslator();
//   konversiKeBahasaArab(String teksBahasa) async {
//     translator.baseUrl = "translate.google.com";
//     translator.translateAndPrint(teksBahasa, to: 'Ar');
//     // log(translator.);
// //    var translation = await translator
// //       .translate(teksBahasa, from: 'id', to: 'ar');
// // log(translation.toString());
//     // Melakukan transliterasi

//     // return a;
//   }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() async {
      _lastWords = removeDiacritics(result.recognizedWords);
      // log('asli ${result.recognizedWords}');
      // var a = konversiKeBahasaArab(result.recognizedWords);
      // log('ini adalah $a');
      cekpas();

      log('diucapkan ${result.recognizedWords}');

      // scrollTo();
    });
  }

  void scrollTo(
    int index,
  ) {
    sc.scrollTo(index: index, duration: Duration(seconds: 2));
  }

  Future<String> uploadFile(String filePath) async {
    var apiUrl =
        "https://api-inference.huggingface.co/models/tarteel-ai/whisper-base-ar-quran";
    var headers = {
      "Authorization": "Bearer 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",
      "Content-Type": "audio/wav"
    };
    
    ByteData data = await rootBundle.load(filePath);
    Uint8ClampedList fileBytes = data.buffer.asUint8ClampedList();
    var response =
        await http.post(Uri.parse(apiUrl), headers: headers, body: fileBytes);

    var a = response.bodyBytes;
    var b = utf8.decode(a);
    return b;
  }

  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  String r = '';
  bool _ditemukan = false;
  List<bool> readStatus = List.generate(7, (index) => false);
  ditemukan(bool c, int index, bool b) {
    _ditemukan = c;
    readStatus[index] = b;
    log('$readStatus');
    // setState(() {
    // });
  }

  cekpas() {
    context.read<MainBloc>().add(CheckPassed(_lastWords));
  }

  show() {
    FancySnackbar.show(
      context,
      "Correct ...",
      logo: const Icon(
        Icons.info,
        color: Colors.white,
      ),
      backgroundColor: Colors.green,
    );
  }

  ItemScrollController sc = ItemScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            _ditemukan == true ? Colors.green : const Color(0xff189474),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
       
            },
            child: Icon(
              Icons.stop,
              color: AppColors.neutral.ne01,
            ),
          ),
          GestureDetector(
            onTap: () async {
              // context.read<MainBloc>().add(const GetDetailSurat(1));
              // _stopListening();
              //  var output = await query("assets/audios/testt.wav");
              String response = await uploadFile('assets/audios/yambu.mp3');
              print(response);
            },
            onDoubleTap: () {
              // context.read<MainBloc>().add(const GetDetailSurat(104));
              _stopListening();
            },
            child: Icon(
              Icons.search,
              color: AppColors.neutral.ne01,
            ),
          ),
        ],
        title: Text(
          "Halaman depan",
          style: AppTextStyle.body1
              .copyWith(color: AppColors.neutral.ne01)
              .setSemiBold(),
        ),
      ),
      backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 12),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: BlocBuilder<MainBloc, MainState>(
                builder: (context, state) {
                  // if (state.isPassed == true) {
                  //   show();
                  // }
                  if (state.index != 0) {
                    log('index adalah ${state.index}');
                    scrollTo(state.index);
                  }
                  if (state.quranData is QuranModels) {
                    var quranData = (state.quranData as QuranModels).data!;
                    var ayat = quranData.ayat;

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 130),
                      child: ScrollablePositionedList.builder(
                        itemScrollController: sc,
                        // controller: _controller,
                        shrinkWrap: true,
                        itemCount: ayat.length,
                        itemBuilder: (context, index) {
                          // var isRead = readStatus[index];

                          var ayatItem = ayat[index];
                          // log('ada ${ayatItem.teksArab}');
                          bool containsInnaKeyword =
                              containsInna(ayatItem.teksArab);
                          bool hasAlifNunTasydidKeyword =
                              hasAlifNunTasydid(ayatItem.teksArab);
                          if (containsInnaKeyword ||
                              hasAlifNunTasydidKeyword) {}
                          // log(' status : $containsInnaKeyword gunnah pada ayat ${ayatItem.teksArab}');

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: const Color(0xfff5f5f5),
                                  borderRadius: BorderRadius.circular(12)),
                              // height: 70,
                              width: MediaQuery.of(context).size.width * 0.80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        // padding: const EdgeInsets.all(
                                        //     // vertical: 6,
                                        //     12
                                        //     // horizontal: 12,
                                        //     ),
                                        alignment: Alignment.center,
                                        decoration: ayatItem.terbaca == true
                                            ? BoxDecoration(
                                                color: const Color(0xff189474),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              )
                                            : BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      const Color(0xff189474),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                        child: Text(
                                          ayatItem.nomorAyat.toString(),
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: ayatItem.terbaca == true
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                      const Spacer(),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: RichText(
                                            text: TextSpan(
                                              // onEnter: ,

                                              style: TextStyle(
                                                fontSize: 18,
                                                color: ayatItem.terbaca == true
                                                    ? const Color(0xff189474)
                                                    : Color.fromARGB(
                                                        255, 56, 56, 56),
                                              ),
                                              children: highlightInna(
                                                  ayatItem.teksArab,
                                                  ayatItem.terbaca),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    ayatItem.teksIndonesia,
                                    style: AppTextStyle.body4.copyWith(
                                        // color: const Color(0xff189474),
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                  return const Text('Quran data not available');
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: _speechEnabled == false ? Colors.red : Colors.green,
          onPressed: _startListening,
          child: Icon(_speechEnabled == false ? Icons.mic_none : Icons.mic)),
    );
  }
}
