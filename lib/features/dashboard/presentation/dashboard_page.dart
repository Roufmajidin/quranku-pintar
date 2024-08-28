import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranku_pintar/core/injection/dependency_injection.dart';
import 'package:quranku_pintar/features/dashboard/presentation/dashboard_view.dart';
import 'package:quranku_pintar/features/main_pages/bloc/main_bloc.dart';
import 'package:quranku_pintar/features/main_pages/data/usecases/quran_usecase.dart';

class Dashboard_page extends StatefulWidget {
  const Dashboard_page({super.key});

  @override
  State<Dashboard_page> createState() => _Dashboard_pageState();
}

class _Dashboard_pageState extends State<Dashboard_page> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(quranUsecase: sl<QuranUsecase>()),
      child: DashboarView(),
    ) ;
  }
}
