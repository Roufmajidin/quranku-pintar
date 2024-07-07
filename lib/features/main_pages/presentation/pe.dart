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
// أَمِنَ لِلَّهِ رَبِّ الْعَالَمِينَ

class _TextComparisonState extends State<TextComparison> {
  Color textColor = Colors.black;
  FontWeight fw = FontWeight.normal;
  TextDecoration txd = TextDecoration.none;
  bool showBackground = false;

  @override
  Widget build(BuildContext context) {
    List<Diff> differences = computeDiffAyatAcuanRekaman(
      widget.ayatAcuanText,
      widget.teksRekognisiText,
    );

    return RichText(
      text: TextSpan(
        children: differences.map((diff) {
          if (diff.operation == DIFF_EQUAL) {
            textColor = Colors.black;
            // txd = TextDecoration.none;
            // fw = FontWeight.normal;
            showBackground = false;
          } else if (diff.operation == DIFF_INSERT) {
            // ini salah
            textColor = Colors.red;
            fw = FontWeight.w500;
            txd = TextDecoration.none;
            showBackground = true;
          } else if (diff.operation == DIFF_DELETE) {
            textColor = Colors.green;
            // fw = FontWeight.bold;
            txd = TextDecoration.none;
            showBackground = false;
          }
          GestureRecognizer recognizer = TapGestureRecognizer()
            ..onTap = () {
              if (diff.operation == DIFF_INSERT) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('Kata tidak ada'),
                    content: Text('tidak ada ${diff.text} harusnya'),
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
            };
          return TextSpan(
            recognizer: recognizer,
            text: diff.text,
            style: AppTextStyle.body1.setBold().copyWith(color: showBackground == true
                    ? textColor.withOpacity(0.4)
                    : textColor,
                backgroundColor: showBackground == true
                    ? Colors.amber.withOpacity(0.5)
                    : Colors.white.withOpacity(0.2))
          );
        }).toList(),
      ),
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
