import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:quranku_pintar/core/error/exeption/exception.dart';
import 'package:quranku_pintar/core/error/failure/failure.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
import 'package:quranku_pintar/features/main_pages/data/models/surah.dart';

class QuranDatasources {
  var uri = 'https://tarteel.tribber.me';
  Future<Either<Failure, QuranModels>> getDetailSurat(int surat) async {
    const String apiUrl = 'https://equran.id/api/v2/surat';
    final response = await http.get(Uri.parse('$apiUrl/$surat'));
    // log('dt s : ${response.statusCode}');
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      // log(jsonData.toString());
      // injeksi tambahan field
      List<dynamic> ayatJsonList = jsonData['data']['ayat'];
      ayatJsonList.forEach((ayatJson) {
        ayatJson['terbaca'] = false; // Inisialisasi ke false
        ayatJson['toke'] = []; // Inisialisasi ke false
      });

      print('ok $ayatJsonList');

      final quranModel = QuranModels.fromJson(jsonData);
      return Right(quranModel);
    } else {
      throw ServerException();
    }
  }

  Future<Either<Failure, List<Surat>>> getAllSurah() async {
    const String apiUrl = 'https://equran.id/api/v2/surat';
    final response = await http.get(Uri.parse(apiUrl));
    log('dt s : ${response.statusCode}');
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      //  List<Surat> s = [];
      List<Surat> surahList = (jsonData['data'] as List).map((data) {
        return Surat.fromJson(data);
      }).toList();
      if (jsonData.containsKey('audioFull')) {
        AudioFull audioFull = AudioFull.fromJson(jsonData['audioFull']);
        log(audioFull.toString());
      }

      // final quranModel = Surat.fromJson(jsonData);
      print(surahList);
      return Right(surahList);
    } else {
      throw ServerException();
    }
  }
  // get materi

  Future<Either<Failure, List<Materi>>> getMateri() async {
    // const String apiUrl = 'https://0e10-103-191-218-249.ngrok-free.app/getmateri';
    final response = await http.get(Uri.parse('$uri/getmateri'));
    log('dt s : ${response.statusCode}');
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);

      //  List<Surat> s = [];
      List<Materi> materiList = jsonData.map((data) {
        return Materi.fromJson(data);
      }).toList();

      print(materiList);
      return Right(materiList);
    } else {
      throw ServerException();
    }
  }

  Future<Either<Failure, List<Pengguna>>> getMateriPengguna(String d) async {
    final response =
        await http.get(Uri.parse('$uri/get_materi_by_device_pengguna/$d'));
    log('Hallo s : ${response.statusCode}');
   if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
    log('Hallo s : ${jsonData}');

      List<Pengguna> penggunaList = jsonData.map((json) => Pengguna.fromJson(json)).toList();
      return Right(penggunaList);
    } else {
      throw ServerException();
    }
  }

  Future<Either<Failure, String>> postDevice(String devicePengguna) async {
    // final String uri = 'store_pengguna';

    try {
      final response = await http.post(
        Uri.parse('$uri/store_pengguna'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'device_pengguna': devicePengguna,
        }),
      );

      log('dt s : ${response.body}');
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        final String message = jsonData['message'];
        return Right(message);
      } else {
        return Left(Failure.parsingFailure());
      }
    } catch (e) {
      return Left(Failure.parsingFailure());
    }
  }

// post by id
  Future<Either<Failure, String>> postLear(int id, int nilai) async {
    // final String uri = 'store_pengguna';

    try {
      final response = await http.post(
        Uri.parse('$uri/update_materi_pengguna/$id'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "is_learn": true,
          "persentase": nilai,
        }),
      );

      log('dt s : ${response.body}');
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        final String message = jsonData['message'];
        return Right(message);
      } else {
        return Left(Failure.parsingFailure());
      }
    } catch (e) {
      return Left(Failure.parsingFailure());
    }
  }
}
