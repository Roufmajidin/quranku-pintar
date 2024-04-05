import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/rule.dart';

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

  List<TextSpan> highlightInna(String text, bool? terbaca) {
    List<TextSpan> spans = [];
    final words = text.split(' ');

    for (String word in words) {
      if (word.contains('اِنَّ')) {
        spans.add(
          TextSpan(
            text: word,
            style:  TextStyle(
              color: terbaca == false ? Colors.red : Colors.black,
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
            style:  TextStyle(
              color:terbaca == false ? Colors.green : const Color(0xff189474),
              // fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if (word.contains('اَمَّ')) {
        spans.add(
          TextSpan(
            text: word,
            style:  TextStyle(
              color:terbaca == false ?  Colors.orange : Colors.black,
              // fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if (word.contains('رَّ') || word.contains('يَّ')) {
        spans.add(
          TextSpan(
            text: word,
            style:  TextStyle(
              color:terbaca == false ? Colors.lime : const Color(0xff189474),
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if (word.toLowerCase() == 'مِّ') {
        spans.add(
          TextSpan(
            text: word,
            style:  TextStyle(
              color: terbaca == false ? Colors.blue : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else {
        spans.add(
          TextSpan(
            style: TextStyle(
              color: terbaca == true
                  ? const Color(0xff189474)
                  : const Color.fromARGB(255, 56, 56, 56),
              fontWeight: FontWeight.bold,

            ),
            text: '$word ',
          ),
        );
      }
    }

    return spans;
  }
  
  String? converterArabJson(String jsonResponse) {
    // Parsing string JSON menjadi objek Dart
    Map<String, dynamic> jsonData = json.decode(jsonResponse);

    // Mengambil nilai dari kunci "text"
    if(jsonData == null ){
      return 'error';
    }
    String? arabicText = jsonData['text'];

    // Menghapus karakter yang tidak diperlukan
    // arabicText = arabicText.replaceAll('"', '');

    return arabicText;
  
}