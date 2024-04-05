// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quranku_pintar/common/extensions/font_weight.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
import 'package:quranku_pintar/features/main_pages/data/models/token.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/helper.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:record/record.dart';


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
  bool isRecord = false;
  String audioPath = '';
  bool isDialog = false;
  String statusText = "";
  String pathConvert = "";

  // audio rec & pl
  late Record audioRecord;
  late AudioPlayer audioPlayer;
  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    audioRecord = Record();
    audioPlayer = AudioPlayer();
    setState(() {});
  }

  @override
  void dispose() {
    audioRecord.dispose();
    audioPlayer.dispose();
    super.dispose();
  }

  Future<void> startRecord() async {
    try {
      if (await audioRecord.hasPermission()) {
        await audioRecord.start();
        setState(() {
          isRecord = true;
        });
      }
    } catch (e) {
      print('error record $e');
    }
  }

  String cntoh = '';
  Future<void> playRecord() async {
    try {
      Source urlS = UrlSource(audioPath);
      setState(() {
        cntoh = urlS.toString();
      });
      log(cntoh.toString());
      await audioPlayer.play(urlS);
    } catch (e) {
      print('error playy $e');
    }
  }

  Future<void> stopRecord() async {
    try {
      String? path = await audioRecord.stop();
      setState(() {
        isRecord = false;
        audioPath = path!;
      });
    } catch (e) {
      print('error stopping record $e');
    }
  }

  void _startListening() async {
    log('ok');
    setState(() {
      _lastWords = '';
      _speechEnabled = true;
    });
    await _speechToText.listen(
      localeId: 'ar',
      onResult: _onSpeechResult,
      // partialResults: false,
    );
  }

  String remove() {
    return '';
  }

  void _stopListening() async {
    await _speechToText.stop();
    log('sesi stop');

    // await Future.delayed(const Duration(seconds: 109));
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

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() async {
      // _lastWords = removeDiacritics(result.recognizedWords);
      _lastWords = result.recognizedWords;
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
    sc.scrollTo(index: index, duration: const Duration(seconds: 2));
  }

  uploadFile(String filePath) async {
    // await uploadtoPy(filePath);
    log('tersimpan $pathConvert');
    var apiUrl =
        "https://api-inference.huggingface.co/models/tarteel-ai/whisper-base-ar-quran";
    var headers = {
      "Authorization": "Bearer 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",
      "Content-Type": "audio/wav"
    };

    File file = File(pathConvert);
    Uint8List fileBytes = await file.readAsBytes();
    var response =
        await http.post(Uri.parse(apiUrl), headers: headers, body: fileBytes);

    var a = response.bodyBytes;
    var b = utf8.decode(a);
    Map<String, dynamic> jsonData = json.decode(b);

    if (jsonData == null) {
      return 'error';
    }
    String arabicText = jsonData['text'];
    setState(() {
      statusText = arabicText;
      cekpas();
    });
    return arabicText;
  }

  // py server python m4a dart convert ke mp3, (karena api gabisa m4a)
  Future<void> uploadtoPy(String filePath) async {
    var apiUrl = "https://cb37-103-191-218-82.ngrok-free.app/convert";

    File file = File(filePath);
    List<int> fileBytes = await file.readAsBytes();

    var request = http.MultipartRequest('POST', Uri.parse(apiUrl));
    request.files.add(http.MultipartFile.fromBytes('file', fileBytes,
        filename: filePath
            .split("/")
            .last)); // Menggunakan nama file M4A sebagai nama file yang diunggah

    try {
      var streamedResponse = await request.send();
      if (streamedResponse.statusCode == 200) {
        var response = await http.Response.fromStream(streamedResponse);

        var tempDir = await getTemporaryDirectory();
        var outputFile = File('${tempDir.path}/output.mp3');
        await outputFile.writeAsBytes(response.bodyBytes);
        print('File MP3 berhasil disimpan: ${outputFile.path}');
        setState(() {
          pathConvert = outputFile.path;
        });
        uploadFile(pathConvert);
      } else {
        print(
            'Gagal mengunggah file. Status code: ${streamedResponse.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
    }
  }

  final SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  String r = '';
  bool _ditemukan = false;
  bool _isShowSnackbar = false;
  List<bool> readStatus = List.generate(7, (index) => false);
  ditemukan(bool c, int index, bool b) {
    _ditemukan = c;
    readStatus[index] = b;
    log('$readStatus');
  }
  // TODO:: PR

  cekpas() async {
    // String response = await uploadFile('assets/audios/satu.mp3');

    // ignore: use_build_context_synchronously
    context.read<MainBloc>().add(CheckPassed(statusText));
  }

  showSnackBar(TajweedToken t) {
    String tt = '';

     if (t.rule.name == 'idghamWithGhunna') {
         tt = 'Idgham Bighunna';
      } else if (t.rule.name == 'idghamWithoutGhunna') {
         tt = 'Idgham Bighunna';
      } else {
         tt = t.rule.name;
      }
    setState(() {
      _isShowSnackbar = true;
     
    });

    FancySnackbar.show(
      context,
      "Hukum: $tt [${t.text}] ",
      logo: const Icon(
        Icons.info,
        color: Colors.white,
      ),
      backgroundColor: t.rule.color(context),
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
              _stopListening();
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
              uploadtoPy(audioPath);
              // print(response);
            },
            onDoubleTap: () {
              // context.read<MainBloc>().add(const GetDetailSurat(104));
              _stopListening();
            },
            child: Icon(
              Icons.download,
              color: AppColors.neutral.ne01,
            ),
          ),
        ],
        title: GestureDetector(
          onTap: () async {
            uploadtoPy(audioPath);
            // print(s.toString());
            // setState(() async {
            //   // cekpas();

            // });
          },
          child: Text(
            "Halaman depan",
            style: AppTextStyle.body1
                .copyWith(color: AppColors.neutral.ne01)
                .setSemiBold(),
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 12),
            if (isRecord) const Text('proses records'),
            const SizedBox(height: 12),
            Stack(
              children: [
                //1
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.80,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            alignment: Alignment.center,
                                            decoration: ayatItem.terbaca == true
                                                ? BoxDecoration(
                                                    color:
                                                        const Color(0xff189474),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                  )
                                                : BoxDecoration(
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xff189474),
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                  ),
                                            child: Text(
                                              ayatItem.nomorAyat.toString(),
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color:
                                                      ayatItem.terbaca == true
                                                          ? Colors.white
                                                          : Colors.black),
                                            ),
                                          ),
                                          // Text(ayatItem.toke.length.toString()),
                                          const Spacer(),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                            child: Directionality(
                                              textDirection: TextDirection.rtl,
                                              child: RichText(
                                                text:
                                                    // TextSpan(
                                                    //   // onEnter: ,

                                                    //   style: TextStyle(
                                                    //     fontSize: 18,
                                                    //     color: ayatItem.terbaca ==
                                                    //             true
                                                    //         ? const Color(
                                                    //             0xff189474)
                                                    //         : const Color.fromARGB(
                                                    //             255, 56, 56, 56),
                                                    //   ),
                                                    //   children: highlightInna(
                                                    //       ayatItem.teksArab,
                                                    //       ayatItem.terbaca),
                                                    // ),
                                                    TextSpan(
                                                  children: <TextSpan>[
                                                    for (final token
                                                        in ayatItem.toke)
                                                      TextSpan(
                                                        recognizer:
                                                            TapGestureRecognizer()
                                                              ..onTap =
                                                                  () async {
                                                                if (token?.rule
                                                                        .name !=
                                                                    'none') {
                                                                  print(
                                                                      'Teks "${token?.rule.name}" ditekan!');
                                                                  showSnackBar(
                                                                      token!);
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          seconds:
                                                                              3));
                                                                  setState(() {
                                                                    _isShowSnackbar =
                                                                        false;
                                                                  });
                                                                }
                                                              },
                                                        text: token?.text,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18,
                                                          fontFamily:
                                                              'Kitab Regular',
                                                          color: token?.rule
                                                                  .color(
                                                                      context) ??
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onSurface,
                                                          // ayatItem
                                                          //             .terbaca ==
                                                          //         true
                                                          //     ? const Color(
                                                          //         0xff189474)
                                                          //     : const Color
                                                          //         .fromARGB(255,
                                                          //         56, 56, 56),
                                                        ),
                                                      ),
                                                  ],
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

                //2
                if (isDialog == true)
                  BlocBuilder<MainBloc, MainState>(builder: (context, state) {
                    return Positioned(
                        top: 400,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          // color: Colors.white,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          height: 500,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Spacer(flex: 1),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Container(
                                      height: 5,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(12))),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    elevation: 0.0,
                                    onPressed: () {
                                      setState(() {
                                        isDialog = false;
                                        statusText = '';
                                        isListening = false;
                                        isRecord = false;
                                        // pathConvert = ;
                                      });
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.close),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 60),
                              FloatingActionButton(
                                  backgroundColor: Colors.green,
                                  onPressed: () async {
                                    if (isRecord == true) {
                                      stopRecord();
                                      statusText = 'Mengecek Audio';
                                      await Future.delayed(
                                          const Duration(seconds: 5));

                                      await uploadtoPy(audioPath);
                                      // print(response);
                                      // Map<String, dynamic> jsonData =
                                      //     json.decode(response);

                                      // String arabicText = jsonData['text'];

                                      cekpas();
                                    } else {
                                      _startListening();
                                      statusText = 'Inisilisasi Audio';
                                      startRecord();
                                    }
                                  },
                                  child: Stack(
                                    children: [
                                      if (statusText == '' ||
                                          statusText == 'Inisilisasi Audio')
                                        Icon(
                                          _speechEnabled == false
                                              ? Icons.mic_none
                                              : Icons.mic,
                                          color: Colors.white,
                                        ),
                                      if (statusText == 'Mengecek Audio')
                                        const CircularProgressIndicator(
                                          color: Colors.white,
                                        )
                                    ],
                                  )),
                              const SizedBox(height: 16),
                              Text(
                                statusText == ''
                                    ? "Tekan untuk memulai"
                                    : statusText,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              // Text(statusText)
                            ],
                          ),
                        ));
                  })
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: isDialog == true
          ? const SizedBox()
          : _isShowSnackbar == false
              ? FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {
                    if (isDialog == false) {
                      setState(() {
                        isDialog = true;
                      });
                    } else {
                      setState(() {
                        isDialog = false;
                      });
                    }
                  },
                  child: Icon(
                      _speechEnabled == false ? Icons.mic_none : Icons.mic),
                )
              : const SizedBox(),
    );
  }
}


// nitip kamu disini dlu 
