class MateriHive {
  String jenisKuis;
  String kategori;
  bool isLearn; // Properti untuk menandai apakah sudah dipelajari

  MateriHive({
    required this.jenisKuis,
    required this.kategori,
    required this.isLearn,
  });

  factory MateriHive.fromJson(Map<String, dynamic> json) {
    return MateriHive(
      jenisKuis: json['jenis_kuis'],
      kategori: json['kategori'],
      isLearn: json['is_learn'] ?? false, // Default false jika tidak ada data
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'jenis_kuis': jenisKuis,
      'kategori': kategori,
      'is_learn': isLearn,
    };
  }
}
