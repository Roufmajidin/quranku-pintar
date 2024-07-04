
import 'package:flutter/material.dart';
import 'package:diff_match_patch/diff_match_patch.dart';

class TextComparison extends StatelessWidget {
  final String ayatAcuanText;
  final String teksRekognisiText;

  const TextComparison({required this.ayatAcuanText, required this.teksRekognisiText});

  @override
  Widget build(BuildContext context) {
    List<Diff> differences = computeDiffAyatAcuanRekaman(ayatAcuanText, teksRekognisiText);

    return RichText(
      text: TextSpan(
        children: differences.map((diff) {
          Color textColor;
          if (diff.operation == DIFF_EQUAL) {
            textColor = Colors.black;
          } else if (diff.operation == DIFF_INSERT) {
            textColor = Colors.red;
          } else if (diff.operation == DIFF_DELETE) {
            textColor = Colors.blue;
          } else {
            textColor = Colors.black;
          }

          return TextSpan(
            text: diff.text,
            style: TextStyle(color: textColor),
          );
        }).toList(),
      ),
    );
  }

  List<Diff> computeDiffAyatAcuanRekaman(String ayatAcuan, String teksRekognisi) {
    DiffMatchPatch dmp = DiffMatchPatch();
    List<Diff> diffs = dmp.diff(ayatAcuan, teksRekognisi);
    dmp.diffCleanupSemantic(diffs);
    return diffs;
  }
}
