// import 'dart:convert';

// import 'package:shared_preferences/shared_preferences.dart';

// import '../../features/authentication/data/models/token/token_model.dart';
// import '../injection/di.dart';

// enum TokenStatus { empty, expired, notExpired }

// extension TokenStatusX on TokenStatus {
//   bool get isEmpty => this == TokenStatus.empty;
//   bool get isExpired => this == TokenStatus.expired;
//   bool get isNotExpired => this == TokenStatus.notExpired;
// }

// // abstract class TokenCacheService {
// //   String? get accessToken;
// //   String? get refreshToken;
// //   Future<bool> saveToken(Token token);
// //   Token? get token;
// //   TokenStatus get status;
// //   Future<bool> deleteToken();
// // }

// class TokenCacheServiceImpl extends TokenCacheService {
//   final SharedPreferences _prefs = sl<SharedPreferences>();
//   final String _kTokenCacheKey = 'tokencache';
//   Token? _token;

//   @override
//   Future<bool> saveToken(Token token) async {
//     // set token timestamps
//     final saveToken =
//         token.copyWith(createdAt: DateTime.now().toIso8601String());

//     // update
//     _token = saveToken;

//     final map = saveToken.toJson();

//     return await _prefs.setString(_kTokenCacheKey, jsonEncode(map));
//   }

//   @override
//   String? get accessToken => _token?.accessToken;

//   @override
//   String? get refreshToken => _token?.refreshToken;

//   @override
//   Token? get token {
//     final map = _prefs.getString(_kTokenCacheKey);
//     if (map == null) return null;

//     final token = Token.fromJson(jsonDecode(map));

//     // update
//     _token = token;

//     return token;
//   }

//   @override
//   TokenStatus get status {
//     if (_token == null) return TokenStatus.empty;

//     const expiredTime = Duration(hours: 23);

//     final timeStampsStr = _token?.createdAt;
//     final timeStamps = timeStampsStr == null || timeStampsStr.isEmpty
//         ? DateTime.now()
//         : DateTime.parse(timeStampsStr);
//     final expired = _isExpired(timeStamps, expiredTime);

//     if (expired) return TokenStatus.expired;
//     return TokenStatus.notExpired;
//   }

//   bool _isExpired(DateTime time, Duration limit) {
//     final expiresIn = time.add(limit);
//     return DateTime.now().isAfter(expiresIn);
//   }

//   @override
//   Future<bool> deleteToken() async {
//     _token = null;

//     return await _prefs.remove(_kTokenCacheKey);
//   }
// }
