import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/core/injection/dependency_injection.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:quranku_pintar/features/main_pages/data/usecases/quran_usecase.dart';
import 'package:quranku_pintar/features/main_pages/presentation/materi_belajar/detail/detail_screen.dart';

class DetailPage extends StatefulWidget {
   DetailPage({super.key, required this.i});

  @override
  State<DetailPage> createState() => _DetailPageState();
final  List<Materi> i;
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(quranUsecase: sl<QuranUsecase>()),
      child:   DetailView(i: widget.i),
    );
    }
}