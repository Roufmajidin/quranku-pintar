import 'package:flutter/material.dart';

extension SetFontWeight on TextStyle {
  /// normal
  TextStyle setRegular() => copyWith(fontWeight: FontWeight.normal, fontFamily: 'Pooppins');
  /// w500
  TextStyle setMedium() => copyWith(fontWeight: FontWeight.w500,  fontFamily: 'Pooppins');
  /// w600
  TextStyle setSemiBold() => copyWith(fontWeight: FontWeight.w600,  fontFamily: 'Pooppins');
  /// bold
  TextStyle setBold() => copyWith(fontWeight: FontWeight.bold,  fontFamily: 'Pooppins');
}
