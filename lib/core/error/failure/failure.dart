import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure({
    int? statusCode,
    @Default('Terjadi kesalahan') String message,
  }) = ServerFailure;

  const factory Failure.googleFailure({
    @Default('Terjadi kesalahan pada otentikasi Google') String message,
  }) = GoogleFailure;

  const factory Failure.parsingFailure({
    @Default('Gagal memparsing respon') String message,
  }) = ParsingFailure;

  const factory Failure.connectionFailure({
    @Default('Tidak ada koneksi internet') String message,
  }) = ConnectionFailure;
}

class LocalAuthFailure implements Exception {
  const LocalAuthFailure(
      [this.message = 'Terjadi kesalahan yang tidak diketahui']);

  factory LocalAuthFailure.fromCode(String code) {
    switch (code) {
      case 'PasscodeNotSet':
        return const LocalAuthFailure(
            'Anda belum mengatur kode sandi di perangkat ini.');
      case 'NotEnrolled':
        return const LocalAuthFailure(
            'Anda belum mendaftarkan biometrik di perangkat ini.');
      case 'NotAvailable':
        return const LocalAuthFailure(
            'Maaf, perangkat ini tidak mendukung biometrik secara hardware.');
      case 'OtherOperatingSystem':
        return const LocalAuthFailure(
            'Maaf, sistem operasi perangkat ini tidak didukung.');
      case 'LockedOut':
        return const LocalAuthFailure(
            'Terlalu banyak percobaan. Harap tunggu sebentar dan coba lagi nanti.');
      case 'PermanentlyLockedOut':
        return const LocalAuthFailure(
            'Maaf, sementara terkunci. Diperlukan autentikasi kuat seperti PIN/Pola/Kata Sandi untuk membuka kunci.');
      case 'biometricOnlyNotSupported':
        return const LocalAuthFailure(
            'Maaf, otentikasi biometrik tidak dapat dilakukan di Windows');
      default:
        return  const LocalAuthFailure();
    }
  }

  final String message;
}

