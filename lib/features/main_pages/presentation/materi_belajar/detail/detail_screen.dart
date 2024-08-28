import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quranku_pintar/common/extensions/extensions.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:quranku_pintar/common/extensions/font_weight.dart';
import 'package:quranku_pintar/features/main_pages/presentation/pe.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:record/record.dart';
import 'package:just_audio/just_audio.dart' as ja;

class DetailView extends StatefulWidget {
  DetailView({super.key, required this.i, required this.k});

  @override
  State<DetailView> createState() => _DetailViewState();
  final List<Materi> i;
  final String k;
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
    isPlay = List.filled(widget.i.length + 1, false);
    log(isPlay.toString());
    _initSpeech();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getDeviceName();
  }

  // func
  // audio rec & pl
  final SpeechToText _speechToText = SpeechToText();
  Map<String, dynamic> groupedMateri = {};
  bool _speechEnabled = false;
  String _lastWords = '';
  String r = '';
  int isId = 0;
  String contohSoal = '';
  bool _ditemukan = false;
  late Record audioRecord;
  late ja.AudioPlayer _player;
  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    audioRecord = Record();

    _player = ja.AudioPlayer();
    _player.play();
    // Set the release mode to keep the source after playback has completed.

    setState(() {});
  }

  bool isP = false;
  Future<void> _initAudioPlayer() async {
    await _player.setUrl(
        'https://ef93-140-213-104-45.ngrok-free.app/get_audio/output_file.mp3'); // Mengatur URL audio untuk diputar
    await _player.setLoopMode(
        ja.LoopMode.off); // Opsional: Mengatur mode pengulangan audio
    _player.play(); // Memulai pemutaran audio
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
  Future<void> playRecord(String url, int index) async {
    try {
      var uri = 'https://tarteel.tribber.me/get_audio/$url';

      if (_player.playing) {
        await _player.stop();
        setState(() {
          isPlay[index] = false;
        });
      } else {
        await _player.setUrl(uri);
        await _player.play();
        setState(() {
          isPlay[index] = true;
        });
      }

      _player.playerStateStream.listen((state) {
        if (state.processingState == ja.ProcessingState.completed) {
          // When playback is complete
          print('Playback completed');
          setState(() {
            isPlay[index] =
                false; // Update the UI to reflect that playback is completed
            _player.stop(); // Stop the player after completion
          });
        }
      });

      setState(() {
        cntoh = uri.toString();
      });
      // log(cntoh.toString());
    } catch (e) {
      print('Error playing audio: $e');
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
// log('cek pas $t');
    context
        .read<MainBloc>()
        .add(CheckPassMateri(ayat: t, acuan: contohSoal, id: isId));
  }

  void _startListening() async {
    log('ok');
    // setState(() {
    _lastWords = '';
    _speechEnabled = true;
    // });
    await _speechToText.listen(
      listenFor: Duration(seconds: 30), // Durasi maksimum untuk mendengarkan

      // listenOptions: ,
      // partialResults:true ,
      listenMode: ListenMode.dictation,
      sampleRate: 8000,
      localeId: 'Ar',
      onResult: _onSpeechResult,
      partialResults: true,
    );
  }

  String remove() {
    return '';
  }

  void _stopListening() async {
    await _speechToText.stop();
    log('sesi stop');
    isRecord = false;

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

  Future<void> getDeviceName() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    try {
      if (Theme.of(context).platform == 'ios') {
      } else {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        // ignore: use_build_context_synchronously
        context.read<MainBloc>().add(PostDevice(androidInfo.model));
        context.read<MainBloc>().add(GetMateriPengguna(androidInfo.model));
      }
    } catch (e) {
      print('Gagal mendapatkan informasi perangkat: $e');
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    // setState(() async {
    // _lastWords = removeDiacritics(result.recognizedWords);
    _lastWords = result.recognizedWords;
    // log('asli ${result.recognizedWords}');
    // var a = konversiKeBahasaArab(result.recognizedWords);
    // log('ini adalah $a');

    log('diucapkan ${result.recognizedWords}');
    cekpas(_lastWords);

    // scrollTo();
    // });
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
    String arabicText = jsonData['text'];
    setState(() {
      statusText = arabicText;
      cekpas(statusText);
    });
    return arabicText;
  }

  Future uploadtoPy(String filePath) async {
    var apiUrl = "https://tarteel.tribber.me";
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
      backgroundColor: AppColors.neutral.ne02,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onDoubleTap: () {
                _stopListening();
              },
              onTap: () {
                // panggilMateri();
                print('length ${widget.i.length}');
                // getDeviceName();
                setState(() {
                  // context
                  //     .read<MainBloc>()
                  //     .add(const GetMateriPengguna('sdk_gphone_x86'));
                  // context
                  //     .read<MainBloc>()
                  //     .add(const PostDevice('sdk_gphone_x86'));
                  _startListening();
                });
              },
              child: Stack(
                children: [
                  Container(
                      height: 180,
                      width: size.width,
                      // color: AppColors.bg.bg01,
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                        colors: [AppColors.bg.bg01, AppColors.primary.pr04],
                        begin: Alignment.centerLeft,
                        end: Alignment.topCenter,
                      )),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 80, left: 16, right: 16, bottom: 16),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Level ${widget.i[0].kategori.toString()}',
                                    style: AppTextStyle.body1
                                        .copyWith(color: AppColors.neutral.ne01)
                                        .setSemiBold()),
                                Text('${widget.i[0].judul.toString()}',
                                    style: AppTextStyle.body3.copyWith(
                                        color: AppColors.neutral.ne01)),
                              ],
                            ),
                          ],
                        ),
                      )),
                  Image.asset(
                    height: 200,
                    'assets/images/fly2.png',
                    fit: BoxFit.contain,
                    width: size.width,
                  )
                ],
              ),
            ),
            // content
            Stack(
              children: [
                BlocBuilder<MainBloc, MainState>(
                  builder: (context, state) {
                    if (state.fetchDataProses == FetchStatus.loading) {
                      return SizedBox(
                        height: sizeList,
                        child: Center(
                          child: CircularProgressIndicator(
                              color: AppColors.bg.bg01),
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
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/fly.png',
                                      fit: BoxFit.contain,
                                      width: size.width,
                                    ),
                                    Container(
                                      // height: 120,
                                      width: size.width,
                                      decoration: BoxDecoration(
                                          color: AppColors.neutral.ne01,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 0),
                                            child: SizedBox(
                                              width: size.width * 0.9,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          width: 50,
                                                          height: 50,
                                                          decoration: BoxDecoration(
                                                              color: d.is_learn ==
                                                                      0
                                                                  ? AppColors
                                                                      .bg.bg01
                                                                      .withOpacity(
                                                                          0.8)
                                                                  : AppColors
                                                                      .bg.bg01
                                                                      .withOpacity(
                                                                          0.8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                          child: Text(
                                                            no.toString(),
                                                            style: AppTextStyle
                                                                .body2
                                                                .setBold()
                                                                .copyWith(
                                                                    color: AppColors
                                                                        .neutral
                                                                        .ne01),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 16),
                                                          child: Text(
                                                            d.jenis_kuis.toString(),
                                                            style: AppTextStyle
                                                                .body2
                                                                .setSemiBold()
                                                                .copyWith(
                                                                    fontFamily:
                                                                        'Popins',
                                                                    color: AppColors
                                                                        .neutral
                                                                        .ne09),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            d.materi.toString(),
                                                            style: AppTextStyle
                                                                .body3
                                                                .copyWith(
                                                                    color: AppColors
                                                                        .neutral
                                                                        .ne09,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic)),
                                                        const SizedBox(
                                                            height: 8),
                                                        Text(
                                                          'Contoh : ${d.contoh_soal.toString().replaceAll('[', '').replaceAll(']', '')}',
                                                          style: AppTextStyle
                                                              .body3
                                                              .setSemiBold()
                                                              .copyWith(
                                                                  fontFamily:
                                                                      'Popins',
                                                                  color: AppColors
                                                                      .neutral
                                                                      .ne09),
                                                        ),
                                                        const SizedBox(
                                                            height: 8),
                                                        Row(
                                                          children: [
                                                            GestureDetector(
                                                              onDoubleTap: () {
                                                                _player.pause();
                                                                isPlay[index] =
                                                                    false;
                                                              },
                                                              onTap: () {
                                                                setState(() {
                                                                  for (int i =
                                                                          0;
                                                                      i <
                                                                          isPlay
                                                                              .length;
                                                                      i++) {
                                                                    isPlay[i] =
                                                                        false;
                                                                  }
                                                                  isPlay[index] =
                                                                      true;

                                                                  playRecord(
                                                                      d.audio
                                                                          .toString(),
                                                                      index);
                                                                });
                                                                log(isPlay
                                                                    .toString());
                                                              },
                                                              child: Icon(
                                                                !isPlay[index]
                                                                    ? Icons
                                                                        .play_arrow_rounded
                                                                    : Icons
                                                                        .pause,
                                                                color: AppColors
                                                                    .neutral
                                                                    .ne09,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                width:
                                                                    8), // Optional: Adds spacing between the icon and text
                                                            Stack(
                                                              children: [
                                                                Text(
                                                                  isPlay[index]
                                                                      ? 'Playing...'
                                                                      : 'Audio Bacaan',
                                                                  style:
                                                                      TextStyle(
                                                                    color: AppColors
                                                                        .neutral
                                                                        .ne09,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            height: 8),
                                                        const SizedBox(
                                                            height: 8),
                                                        Text(
                                                          'Latihan : Lafalkan salah satu huruf yang ada pada contoh!',
                                                          style: TextStyle(
                                                              color: AppColors
                                                                  .neutral.ne09,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic),
                                                        ),
                                                        const SizedBox(
                                                            height: 8),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              // context
                                                              //     .read<MainBloc>()
                                                              //     .add(PostLearn(
                                                              //         id: d.id!,
                                                              //         nilai: 100));

                                                              print(
                                                                  'ini adalah ${d.id}');
                                                              contohSoal = d
                                                                  .contoh_soal
                                                                  .toString();
                                                              isId = d.id!;
                                                              isDialog == false
                                                                  ? isDialog =
                                                                      true
                                                                  : isDialog =
                                                                      false;
                                                            });
                                                          },
                                                          child: Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 50,
                                                                height: 50,
                                                                decoration: BoxDecoration(
                                                                    color: AppColors
                                                                        .bg.bg01
                                                                        .withOpacity(
                                                                            0.8),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8)),
                                                                child:
                                                                    const Icon(
                                                                  Icons.mic,
                                                                  color: Colors
                                                                      .white,
                                                                )),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 8),
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
                                  ],
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
                        int fullStars = (state.persentase / 20).floor();
                        bool hasHalfStar = (state.persentase % 20) >= 10;
                        return Padding(
                          padding: EdgeInsets.only(
                              top: state.koreksian.length >= 2 ? 120 : 200),
                          child: Container(
                            height: MediaQuery.of(context).size.height,

                            // color: Colors.white,
                            decoration: BoxDecoration(
                              color: AppColors.neutral.ne01,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            // height: 500,
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
                                            color: AppColors.bg.bg01,
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    FloatingActionButton(
                                      backgroundColor: AppColors.neutral.ne01,
                                      elevation: 0.0,
                                      onPressed: () {
                                        setState(() {
                                          // close
                                          context
                                              .read<MainBloc>()
                                              .add(StopRekam());
                                          contohSoal = '';

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
                                    backgroundColor:
                                        AppColors.bg.bg01.withOpacity(0.8),
                                    onPressed: () async {
                                      if (isRecord == true) {
                                        selesai = true;
                                        isRecord = false;
                                        print('stop');

                                        context
                                            .read<MainBloc>()
                                            .add(StopRekam());
                                        // stopRecord();
                                        _stopListening();
                                      } else {
                                        isRecord = true;
                                        // record bre
                                        // startRecord();
                                        context
                                            .read<MainBloc>()
                                            .add(MulaiRekam());
                                        _startListening();

                                        print('mulai');

                                        pp = '';
                                        statusText = '';
                                      }
                                    },
                                    child: Stack(
                                      children: [
                                        if (state.isLoading == '' ||
                                            statusText == 'Inisialisasi Audio')
                                          Icon(
                                            _speechEnabled == false
                                                ? Icons.mic_none
                                                : Icons.mic,
                                            color: AppColors.neutral.ne02,
                                          ),
                                        if (state.isLoading == 'mulai')
                                          CircularProgressIndicator(
                                            color: AppColors.bg.bg01,
                                          )
                                      ],
                                    )),
                                const SizedBox(height: 16),
                                // pe

                                if (state.isLoading == '')
                                  Text("Tekan untuk memulai",
                                      style: AppTextStyle.body3),
                                if (state.isLoading == 'mulai')
                                  Text("Merekam", style: AppTextStyle.body3),
                                const SizedBox(height: 8),
                                Text(
                                  'Ucapkan Huruf',
                                  style: AppTextStyle.body3,
                                ),
                                // if()
                                Text(
                                  ' ${contohSoal.replaceAll('[', '').replaceAll(']', '')}',
                                  style: state.isLoading == 'selesai'
                                      ? AppTextStyle.body3.setRegular()
                                      : AppTextStyle.body1.setRegular(),
                                ),

                                // Text(statusText),
                                //  selesai == true
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Persentase Bacaan kamu ${state.persentase}%",
                                      style: AppTextStyle.body3.setRegular(),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(5, (index) {
                                        if (index < fullStars) {
                                          return Icon(Icons.star_rounded,
                                              color: AppColors.bg.bg01);
                                        } else if (index == fullStars &&
                                            hasHalfStar) {
                                          return Icon(Icons.star_half,
                                              color: AppColors.bg.bg01);
                                        } else {
                                          return const Icon(Icons.star_border,
                                              color: Colors.grey);
                                        }
                                      }),
                                    ),
                                  ],
                                ),
                                BlocBuilder<MainBloc, MainState>(
                                    builder: (context, state) {
                                  return Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child:
                                        // mek
                                        state.koreksian.isNotEmpty
                                            ? TextComparison(
                                                ayatAcuanText: state.ayatAcuan,
                                                teksRekognisiText: _lastWords)
                                            : SizedBox(),
                                  );
                                }),
                                const SizedBox(height: 16),
                                if (state.isLoading != 'merekam' ||
                                    state.isLoading == '')
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: GestureDetector(
                                      onTap: () {
                                        // print(statusText);
                                      },
                                      child: ListView.builder(
                                        padding:
                                            const EdgeInsets.only(bottom: 40),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        physics: const ScrollPhysics(),
                                        itemCount: state.koreksian.length,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            children: [
                                              const Icon(
                                                Icons.circle,
                                                size: 6,
                                              ),
                                              const SizedBox(width: 6),
                                              Expanded(
                                                child: Text(
                                                  state.koreksian[index],
                                                  style: AppTextStyle.body3
                                                      .setRegular()
                                                      .copyWith(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                  maxLines:
                                                      2, // Batasi jumlah baris ke 1
                                                  softWrap:
                                                      false, // Tidak membungkus kata-kata
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ),
                        );
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
