import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:quranku_pintar/core/error/exeption/exception.dart';
import 'package:quranku_pintar/core/error/failure/failure.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';

class QuranDatasources {
  Future<Either<Failure, QuranModels>> getDetailSurat(int surat) async {
    const String apiUrl = 'https://equran.id/api/v2/surat';
    final response = await http.get(Uri.parse('$apiUrl/$surat'));
    log('dt s : ${response.statusCode}');
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      log(jsonData.toString());
      // injeksi tambahan field
      List<dynamic> ayatJsonList = jsonData['data']['ayat'];
      ayatJsonList.forEach((ayatJson) {
        ayatJson['terbaca'] = false; // Inisialisasi ke false
      });

      print('ok $ayatJsonList');
      
      final quranModel = QuranModels.fromJson(jsonData);
      return Right(quranModel);
    } else {
      throw ServerException();
    }
  }
}
