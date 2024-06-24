import 'package:flutter/material.dart';
import 'package:quranku_pintar/features/main_pages/presentation/main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/core/injection/dependency_injection.dart';
import 'package:quranku_pintar/features/main_pages/data/usecases/quran_usecase.dart';

class MainPage extends StatelessWidget {
  int nomor;

   MainPage({super.key, required this.nomor});

  @override
  Widget build(BuildContext context) {
    // return const MainView();
     return BlocProvider(
      create: (context) => MainBloc(quranUsecase: sl<QuranUsecase>()),
      child:  MainView(nomor: nomor),
    );
  }
}