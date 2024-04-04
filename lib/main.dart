import 'package:flutter/material.dart';
import 'package:quranku_pintar/features/main_pages/presentation/main_page.dart';
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
      home: const MainPage(),
    );
  }
} 

  