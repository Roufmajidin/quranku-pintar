import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quranku_pintar/core/error/failure/failure.dart';
import 'package:quranku_pintar/features/main_pages/data/datasource/quran_datasource.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
import 'package:quranku_pintar/features/main_pages/data/models/surah.dart';

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
  Future<Either<Failure, List<Surat>>> getALlSurat() async {

    try {
      final res = await rds.getAllSurah();
      // log('repo $res');
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }
   Future<Either<Failure, List<Materi>>> getMateri() async {

    try {
      final res = await rds.getMateri();
      // log('repo $res');
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }
  Future<Either<Failure, String>> postDevice(String d) async {

    try {
      final res = await rds.postDevice(d);
      // log('repo $res');
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }
  Future<Either<Failure, List<Pengguna>>> getMateriPengguna(String d) async {

    try {
      final res = await rds.getMateriPengguna(d);
      // log('repo $res');
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }
   Future<Either<Failure, String>> postLearn(int d, int nilai) async {

    try {
      final res = await rds.postLear(d, nilai);
      // log('repo $res');
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }
}
