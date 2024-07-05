import 'package:flutter/material.dart';
import 'package:quranku_pintar/core/navigation/navigation.dart';
import 'package:quranku_pintar/core/injection/dependency_injection.dart';

void main() async{
  await setupDependency();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins'
      ),
      home: const Navigation()
      //  MainPage(),
    );  
  }
}

// import 'package:flutter/material.dart';
// import 'package:diff_match_patch/diff_match_patch.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Text Compare')),
//         body: Center(
//           child: TextComparison(
//             ayatAcuanText: "بسم الله الرحمن الرحيم",
//             teksRekognisiText: "بسم الله  الرحيم",
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TextComparison extends StatelessWidget {
//   final String ayatAcuanText;
//   final String teksRekognisiText;

//   TextComparison({required this.ayatAcuanText, required this.teksRekognisiText});

//   @override
//   Widget build(BuildContext context) {
//     List<Diff> differences = computeDiffAyatAcuanRekaman(ayatAcuanText, teksRekognisiText);

//     return RichText(
//       text: TextSpan(
//         children: differences.map((diff) {
//           Color textColor;
//           if (diff.operation == DIFF_EQUAL) {
//             textColor = Colors.black;
//           } else if (diff.operation == DIFF_INSERT) {
//             textColor = Colors.red;
//           } else if (diff.operation == DIFF_DELETE) {
//             textColor = Colors.blue;
//           } else {
//             textColor = Colors.black;
//           }

//           return TextSpan(
//             text: diff.text,
//             style: TextStyle(color: textColor),
//           );
//         }).toList(),
//       ),
//     );
//   }

//   List<Diff> computeDiffAyatAcuanRekaman(String ayatAcuan, String teksRekognisi) {
//     DiffMatchPatch dmp = DiffMatchPatch();
//     List<Diff> diffs = dmp.diff(ayatAcuan, teksRekognisi);
//     dmp.diffCleanupSemantic(diffs);
//     return diffs;
//   }
// }
    