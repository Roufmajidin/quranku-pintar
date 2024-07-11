// import 'package:hive/hive.dart';
// import 'package:quranku_pintar/features/main_pages/data/models/hive_models/materi_hive.dart';

// class MateriRepository {
//   Future<List<Materi>> getAllMateri() async {
//     var box = await Hive.openBox('materiBox');
//     // Misalnya, jika Anda menyimpan list Materi dengan key tertentu
//     return (box.get('groupedByJenisKuisAndKategori') as List<dynamic>?)
//         ?.map((e) => Materi.fromJson(e))
//         .toList() ?? [];
//   }

//   Future<void> updateMateriLearnStatus(String id, bool isLearn) async {
//     var box = await Hive.openBox('materiBox');
//     // Misalnya, jika Anda memiliki struktur data yang kompleks dalam Hive,
//     // Anda perlu mengakses data dengan cara yang sesuai.
//     var groupedData = box.get('groupedByJenisKuisAndKategori');
//     // Lakukan pembaruan pada status isLearn untuk Materi dengan id tertentu
//     // ...

//     // Simpan kembali data yang diperbarui ke Hive
//     await box.put('groupedByJenisKuisAndKategori', groupedData);
//   }
// }