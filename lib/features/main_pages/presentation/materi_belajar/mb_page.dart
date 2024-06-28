import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/core/injection/dependency_injection.dart';
import 'package:quranku_pintar/features/main_pages/data/usecases/quran_usecase.dart';
import 'package:quranku_pintar/features/main_pages/presentation/main_screen.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/mb_screen.dart';

import '../../bloc/main_bloc.dart';

class MbPage extends StatefulWidget {
  const MbPage({super.key});

  @override
  State<MbPage> createState() => _MbPageState();
}

class _MbPageState extends State<MbPage> {
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
      create: (context) => MainBloc(quranUsecase: sl<QuranUsecase>()),
      child:  MbView(),
    );
  }
}