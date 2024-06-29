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
    const String apiUrl = 'https://84b0-103-191-218-249.ngrok-free.app/getmateri';
    final response = await http.get(Uri.parse(apiUrl));
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
}
