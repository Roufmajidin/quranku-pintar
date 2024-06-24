import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quranku_pintar/core/error/failure/failure.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
import 'package:quranku_pintar/features/main_pages/data/models/surah.dart';
import 'package:quranku_pintar/features/main_pages/data/repositories/quran_repositories_impl.dart';

class QuranUsecase {
  final QuranRepositoryImpl rri = QuranRepositoryImpl();
  Future<Either<Failure,QuranModels>> getDetailSurat(
      {required int surat}) async {
    log('report usercase');

    return await rri.getDetailSurat(surat: surat);
  }
   Future<Either<Failure,Surat>> getAllSurah() async {

    return await rri.getALlSurat();
  }
}
