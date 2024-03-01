extension StringExtension on String {
  /// Mengembalikan [String] dengan awalan huruf besar
  /// 
  /// ```dart
  /// 'alphabet'.capitalize(); // 'Alphabet'
  /// ```
  String capitalize() =>
      "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
}
