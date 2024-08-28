import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:quranku_pintar/common/extensions/font_weight.dart';
import 'package:quranku_pintar/common/themes/themes.dart';

class TextComparison extends StatefulWidget {
  final String ayatAcuanText;
  final String teksRekognisiText;

  const TextComparison(
      {required this.ayatAcuanText, required this.teksRekognisiText});

  @override
  State<TextComparison> createState() => _TextComparisonState();
}

class _TextComparisonState extends State<TextComparison> {
  @override
  Widget build(BuildContext context) {
    List<Diff> differences = computeDiffAyatAcuanRekaman(
      widget.teksRekognisiText,
      widget.ayatAcuanText,
    );
    List<Diff> deletedDiffs =
        differences.where((diff) => diff.operation == DIFF_DELETE).toList();
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: differences.map((diff) {
              Color textColor;
              Color backgroundColor;
              bool showBackground;

              if (diff.operation == DIFF_EQUAL) {
                textColor = Colors.black;
                backgroundColor = Colors.transparent;
                showBackground = false;
              } else if (diff.operation == DIFF_INSERT) {
                textColor = Colors.green;
                backgroundColor = Colors.green.withOpacity(0.2);
                showBackground = true;
              } else if (diff.operation == DIFF_DELETE) {
                textColor = Colors.red;
                backgroundColor = Colors.red.withOpacity(0.1);
                showBackground = true;
              } else {
                textColor = Colors.black;
                backgroundColor = Colors.transparent;
                showBackground = false;
              }

              return TextSpan(
                text: diff.text,
                style: TextStyle(
                  letterSpacing: 0.6,
                  color: textColor,
                  fontSize: 30,
                  backgroundColor:
                      showBackground ? backgroundColor : Colors.transparent,
                  decoration: TextDecoration.none,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    if (diff.operation == DIFF_INSERT) {
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Text('Koreksi Bacaan'),
                          content: Text('Teks "${diff.text}" seharusnya ada'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }

                    if (diff.operation == DIFF_DELETE) {
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          
                          title: Text('Koreksi Bacaan'),
                          content: Text('Hilangkan Bacaan ${diff.text}'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        if (deletedDiffs != null) 
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(color: Colors.redAccent),
            margin: EdgeInsets.only(bottom: 6),
            child: Text(
              'Hilangkan harakat bacaan yang ditandai warna merah!',
              style: TextStyle(fontSize: 14),
            ),
          ),
      ],
    );
  }

  List<Diff> computeDiffAyatAcuanRekaman(
      String ayatAcuan, String teksRekognisi) {
    DiffMatchPatch dmp = DiffMatchPatch();
    List<Diff> diffs = dmp.diff(ayatAcuan, teksRekognisi);
    dmp.diffCleanupSemantic(diffs);
    return diffs;
  }
}
