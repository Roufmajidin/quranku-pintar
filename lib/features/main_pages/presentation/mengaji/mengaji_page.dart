import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/core/injection/dependency_injection.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/presentation/mengaji/mengaji_screen.dart';

import '../../data/usecases/quran_usecase.dart';

class MengajiPage extends StatefulWidget {
  const MengajiPage({super.key});

  @override
  State<MengajiPage> createState() => _MengajiPageState();
}

class _MengajiPageState extends State<MengajiPage> {
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
      create: (context) => MainBloc(quranUsecase: sl<QuranUsecase>()),
      child: const Mengajiiew(),
    );
  }
}