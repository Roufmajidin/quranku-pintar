import 'package:hive/hive.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';

class MateriAdapter extends TypeAdapter<Materi> {
  @override
  final int typeId = 0; // ID unik untuk kelas Materi

  @override
  Materi read(BinaryReader reader) {
    return Materi.fromJson(reader.read());
  }

  @override
  void write(BinaryWriter writer, Materi obj) {
    writer.writeMap(obj.toJson());
  }
}
