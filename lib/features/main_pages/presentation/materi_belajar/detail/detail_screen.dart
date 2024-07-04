import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/common/extensions/font_weight.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
import 'package:quranku_pintar/features/main_pages/data/models/token.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/helper.dart';
import 'package:quranku_pintar/features/main_pages/presentation/pe.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:fancy_snackbar/fancy_snackbar.dart';
import 'package:record/record.dart';

class DetailView extends StatefulWidget {
  DetailView({super.key, required this.i});

  @override
  State<DetailView> createState() => _DetailViewState();
  final List<Materi> i;
}
// var

bool isListening = false;
bool isRecord = false;
String audioPath = '';
bool isDialog = false;
bool selesai = false;
String statusText = "";
String pathConvert = "";
String pp = '';
ItemScrollController sc = ItemScrollController();

class _DetailViewState extends State<DetailView> {
  late List<bool> isPlay;
  double sizeList = 600;
  @override
  void initState() {
    super.initState();
    isPlay = List.filled(widget.i.length, false);
    _initSpeech();
  }

  // func
  // audio rec & pl
  final SpeechToText _speechToText = SpeechToText();

  bool _speechEnabled = false;
  String _lastWords = '';
  String r = '';
  bool _ditemukan = false;
  late Record audioRecord;
  late AudioPlayer audioPlayer;
  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    audioRecord = Record();
    audioPlayer = AudioPlayer();
    setState(() {});
  }

  Future<void> startRecord() async {
    try {
      if (await audioRecord.hasPermission()) {
        await audioRecord.start();
        setState(() {
          statusText = 'Inisialisasi Audio';

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
        statusText = 'Mengecek Audio';
        isRecord = false;
        audioPath = path!;
        log('stop for : audio path $audioPath');
      });
      await uploadtoPy(audioPath);

      await cekpas(statusText);
    } catch (e) {
      print('error stopping record $e');
    }
  }

  cekpas(String t) async {
    // String response = await uploadFile('assets/audios/satu.mp3');

    // ignore: use_build_context_synchronously
    context.read<MainBloc>().add(CheckPassed(t));
  }

  void _startListening() async {
    log('ok');
    setState(() {
      _lastWords = '';
      _speechEnabled = true;
    });
    await _speechToText.listen(
      localeId: 'Ar',
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

  String removeDiacritics(String text) {
    return text.replaceAll(
        RegExp(
            r'[\u0610-\u061A\u064B-\u065F\u0670\u06D6-\u06ED\u08D3-\u08E1\u08E3-\u08FF\uFB50-\uFDCF\uFDF0-\uFDFF\uFE70-\uFEFC]'),
        '');
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() async {
      // _lastWords = removeDiacritics(result.recognizedWords);
      _lastWords = result.recognizedWords;
      // log('asli ${result.recognizedWords}');
      // var a = konversiKeBahasaArab(result.recognizedWords);
      // log('ini adalah $a');
      cekpas(statusText);

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

    log('tersimpan $filePath');
    var apiUrl =
        "https://api-inference.huggingface.co/models/tarteel-ai/whisper-base-ar-quran";
    var headers = {
      "Authorization": "Bearer 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",
      "Content-Type": "audio/wav"
    };

    File file = File(filePath);
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
      cekpas(statusText);
    });
    return arabicText;
  }

  Future uploadtoPy(String filePath) async {
    // var apiUrl = "https://4460-103-191-218-82.ngrok-free.app/convert";
    var apiUrl = "https://39b2-140-213-99-243.ngrok-free.app";
    log('mau ke tartil $filePath');
    File file = File(filePath);
    List<int> fileBytes = await file.readAsBytes();

    var request = http.MultipartRequest('POST', Uri.parse(apiUrl));
    request.files.add(http.MultipartFile.fromBytes('file', fileBytes,
        filename: filePath.split("/").last));

    try {
      var streamedResponse = await request.send();
      if (streamedResponse.statusCode == 200) {
        var response = await http.Response.fromStream(streamedResponse);

        var jsonResponse = jsonDecode(response.body);

        // Mengambil nilai teks dari kunci 'text'
        var text = jsonResponse['text'];
        log(text);
        setState(() {
          selesai = true;
          statusText = text;
          cekpas(statusText);
        });
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
    }
    // return statusText;
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // panggilMateri();
                print('length ${widget.i.length}');
              },
              child: Container(
                  height: 180,
                  width: size.width,
                  color: const Color(0xff189474),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 80, left: 16, right: 16, bottom: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Detail",
                            style: AppTextStyle.body3
                                .copyWith(color: AppColors.neutral.ne01)),
                        Text(widget.i[0].kategori.toString(),
                            style: AppTextStyle.body1
                                .copyWith(color: AppColors.neutral.ne01)
                                .setSemiBold()),
                      ],
                    ),
                  )),
            ),
            // content
            Stack(
              children: [
                BlocBuilder<MainBloc, MainState>(
                  builder: (context, state) {
                    if (state.fetchDataProses == FetchStatus.loading) {
                      return SizedBox(
                        height: sizeList,
                        child: const Center(
                          child: CircularProgressIndicator(color: Colors.green),
                        ),
                      );
                    }

                    return SizedBox(
                      height: sizeList,
                      child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: widget.i.length,
                            itemBuilder: (context, index) {
                              var d = widget.i[index];
                              var no = index += 1;
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Container(
                                  // height: 120,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                              255, 24, 197, 154)
                                          .withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: SizedBox(
                                          width: size.width * 0.9,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 50,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(255, 24,
                                                              197, 154),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8)),
                                                      child: Text(
                                                        no.toString(),
                                                        style: AppTextStyle
                                                            .body2
                                                            .setBold()
                                                            .copyWith(
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 16),
                                                      child: Text(
                                                        d.judul.toString(),
                                                        style: AppTextStyle
                                                            .body2
                                                            .setSemiBold()
                                                            .copyWith(
                                                                fontFamily:
                                                                    'Popins',
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      d.materi.toString(),
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                    ),
                                                    const SizedBox(height: 8),
                                                    Text(
                                                      'Contoh Soal : ${d.contoh_soal.toString()}',
                                                      style: AppTextStyle.body3
                                                          .setSemiBold()
                                                          .copyWith(
                                                              fontFamily:
                                                                  'Popins',
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    const SizedBox(height: 8),
                                                    Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              for (int i = 0;
                                                                  i <
                                                                      isPlay
                                                                          .length;
                                                                  i++) {
                                                                isPlay =
                                                                    List.filled(
                                                                        widget.i
                                                                            .length,
                                                                        false);
                                                              }
                                                              isPlay[index] =
                                                                  true;
                                                            });
                                                            log(isPlay
                                                                .toString());
                                                          },
                                                          child: Icon(
                                                              !isPlay[index]
                                                                  ? Icons
                                                                      .play_arrow_rounded
                                                                  : Icons.pause,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        Text(
                                                          isPlay[index]
                                                              ? 'Playying...'
                                                              : 'Audio Bacaan',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 8),
                                                    const SizedBox(height: 8),
                                                    const Text(
                                                      'Latihan : Lafalkan salah satu huruf yang ada pada contoh!',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                    ),
                                                    const SizedBox(height: 8),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          isDialog == false
                                                              ? isDialog = true
                                                              : isDialog =
                                                                  false;
                                                        });
                                                        log(d.toString());
                                                      },
                                                      child: Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 50,
                                                            height: 50,
                                                            decoration: BoxDecoration(
                                                                color: const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    24,
                                                                    197,
                                                                    154),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8)),
                                                            child: const Icon(
                                                              Icons.mic,
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 8),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                    );
                  },
                ),
                isDialog == true
                    ?

                    // dialog
                    BlocBuilder<MainBloc, MainState>(builder: (context, state) {
                        return Positioned(
                            top: 300,
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
                                            selesai = false;
                                          });
                                        },
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(Icons.close),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  FloatingActionButton(
                                      backgroundColor: Colors.green,
                                      onPressed: () async {
                                        if (isRecord == true) {
                                          stopRecord();
                                        } else {
                                          startRecord();
                                          pp = '';
                                          statusText = '';
                                        }
                                      },
                                      child: Stack(
                                        children: [
                                          if (statusText == '' ||
                                              statusText ==
                                                  'Inisialisasi Audio')
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
                                  // pe
                                  // statusText == ''
                                  //     ? Text('Ucapkan ayat ke- ${state.ayatIndex+1}')
                                  //     : TextComparison(
                                  //         ayatAcuanText:
                                  //            pp,
                                  //         teksRekognisiText:
                                  //             "بسم الله  الرحيم",
                                  //       ),

                                  Text(
                                    statusText == ''
                                        ? "Tekan untuk memulai"
                                        : 'Result is',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  // Text(statusText),
                                  selesai == true
                                      ? BlocBuilder<MainBloc, MainState>(
                                          builder: (context, state) {
                                          if (statusText != 'Mengecek Audio' ||
                                              statusText !=
                                                  'Inisialisasi Audio') {
                                            return TextComparison(
                                                ayatAcuanText: isRecord == true
                                                    ? ''
                                                    : state.ayatAcuan,
                                                teksRekognisiText: statusText ==
                                                            'Mengecek Audio' ||
                                                        statusText ==
                                                            'Inisialisasi Audio'
                                                    ? ''
                                                    : statusText);
                                          }
                                          return const SizedBox();
                                        })
                                      : const SizedBox(),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ));
                      })
                    : const SizedBox()
              ],
            ),
            //  cont
          ],
        ),
      ),
    );
  }
}
