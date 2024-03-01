import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quranku_pintar/core/error/failure/failure.dart';
import 'package:quranku_pintar/features/main_pages/data/datasource/quran_datasource.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';

class QuranRepositoryImpl {
  final QuranDatasources rds = QuranDatasources();
  Future<Either<Failure, QuranModels>> getDetailSurat({
    required int surat,

  }) async {
    log('report impl');

    try {
      final res = await rds.getDetailSurat(surat);
      // log('repo $res');
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }
}
