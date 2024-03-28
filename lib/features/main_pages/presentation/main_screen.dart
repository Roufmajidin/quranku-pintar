import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/common/extensions/font_weight.dart';
import 'package:quranku_pintar/common/themes/themes.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/rule.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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
    await _speechToText.listen(localeId: 'ar-SA', onResult: _onSpeechResult);
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

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() async {
      _lastWords = removeDiacritics(result.recognizedWords);
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

  ItemScrollController sc = ItemScrollController();
  int _mainArea = 0;
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
              // _stopListening();
              _mainArea += 1;
              // _controller.jumpTo(_mainArea+20, );
              // _controller.animateTo(7*100, duration: Duration(seconds: 3), curve: Curves.fastEaseInToSlowEaseOut);
              // sc.scrollTo(index: _mainArea, duration: Duration(seconds: 2));
            },
            child: Icon(
              Icons.stop,
              color: AppColors.neutral.ne01,
            ),
          ),
          GestureDetector(
            onTap: () {
              context.read<MainBloc>().add(const GetDetailSurat(1));
            },
            onDoubleTap: () {
              context.read<MainBloc>().add(const GetDetailSurat(104));
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
                  if(state.index != 0){
                    log('index adalah ${state.index}');
                    scrollTo(state.index);

                  }
                  if (state.quranData is QuranModels) {
                    if (_ditemukan == true) {
                      Future.delayed(const Duration(seconds: 4));

                      _stopListening();
                    }
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
                          log('ada gunnah pada ayat ${ayatItem.teksArab} $containsInnaKeyword');

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
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 6,
                                          horizontal: 12,
                                        ),
                                        decoration: ayatItem.terbaca == true
                                            ? BoxDecoration(
                                                color: const Color(0xff189474),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              )
                                            : BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      const Color(0xff189474),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                        child: Text(
                                          ayatItem.nomorAyat.toString(),
                                          style: AppTextStyle.body3
                                              .setSemiBold()
                                              .copyWith(
                                                  color:
                                                      ayatItem.terbaca == true
                                                          ? Colors.white
                                                          : Colors.black),
                                        ),
                                      ),
                                      const Spacer(),
                                      SizedBox(
                                        width: 300,
                                        child: RichText(
                                          text: TextSpan(
                                            style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,

                                            ),
                                            children: highlightInna(
                                                ayatItem.teksArab,),
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

  bool containsInna(String textArabic) {
    String lowercaseText = textArabic.toLowerCase();
    return lowercaseText.contains('إِنَّ');
  }

  bool hasAlifNunTasydid(String textArabic) {
    String lowercaseText = textArabic.toLowerCase();
    RegExp regex = RegExp(r'\bاَنَ\b');
    return regex.hasMatch(lowercaseText);
  }

  List<TajweedRule> getMatchingTajweedRules(List<String> matchingRules) {
    return matchingRules
        .map((rule) => alFatihahTajweedRules.firstWhere(
            (tajweedRule) => tajweedRule.tajweedRules.contains(rule)))
        .toList();
  }

  List<TextSpan> highlightInna(String text) {
    List<TextSpan> spans = [];
    final words = text.split(' ');

    for (String word in words) {
      if (word.contains('اِنَّ')) {
        spans.add(
          TextSpan(
            text: word,
            style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if (word.contains('نْكَ') ||
          word.contains('نْـَكْ') ||
          word.contains('نْـِكْ') ||
          word.contains('نْـُكْ') ||
          //
          word.contains('نْف') ||
          word.contains('نّْفِ') ||
          word.contains('نّْفُ') ||
          word.contains('نّْفٍ') ||
          //
          //
          word.contains('نْزِ') ||
          word.contains('نْزْ') ||
          //
          word.contains('نْقِ') ||
          word.contains('نْـَقْ') ||
          word.contains('نْـِقْ') ||
          word.contains('نْـُقْ') ||
          //
          word.contains('نْدِ') ||
          word.contains('نْ ذ') ||
          word.contains('نْذِ') ||
          word.contains(' ذْ') ||
          word.contains('نْـِذْ') ||
          word.contains('نْـُذْ') ||
          word.contains('ظف') ||
          word.contains('ضٌۙ') ||
          word.contains('نْز') ||
          word.contains('نْك') ||
          word.contains('نْت')) {
        spans.add(
          TextSpan(
            text: word,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if (word.contains('اَمَّ')) {
        spans.add(
          TextSpan(
            text: word,
            style: const TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if (word.contains('رَّ') || word.contains('يَّ')) {
        spans.add(
          TextSpan(
            text: word,
            style: const TextStyle(
              color: Colors.lime,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if (word.toLowerCase() == 'مِّ') {
        spans.add(
          TextSpan(
            text: word,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else {
        spans.add(
          TextSpan(
            text: '$word ',
          ),
        );
      }
    }

    return spans;
  }
}
