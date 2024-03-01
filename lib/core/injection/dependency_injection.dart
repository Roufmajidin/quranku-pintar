// import 'dart:developer';
import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:quranku_pintar/features/main_pages/data/usecases/quran_usecase.dart';
import 'package:quranku_pintar/features/main_pages/data/datasource/quran_datasource.dart';
import 'package:quranku_pintar/features/main_pages/data/repositories/quran_repositories_impl.dart';
final  sl = GetIt.instance;
Future<void> setupDependency() async {
  // TODO : registerin Rds
  sl.registerSingleton<QuranUsecase>(QuranUsecase());
  sl.registerSingleton<QuranDatasources>(QuranDatasources());
  sl.registerSingleton<QuranRepositoryImpl>(QuranRepositoryImpl());
  log('ok');

 
}
