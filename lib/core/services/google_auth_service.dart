// import 'package:google_sign_in/google_sign_in.dart';

// abstract class GoogleAuthService {
//   Future<GoogleSignInAccount?> signIn();
//   Future<String?> get idToken;
//   Future<void> signOut();
// }

// class GoogleAuthServiceImpl extends GoogleAuthService {
//   final _googleSignIn = GoogleSignIn();

//   GoogleSignInAccount? _googleSignInAccount;

//   @override
//   Future<GoogleSignInAccount?> signIn() async {
//     try {
//       _googleSignInAccount = await _googleSignIn.signIn();

//       if (_googleSignInAccount == null) _signOut().then((_) => null);
//       return _googleSignInAccount;
//     } catch (e) {
//       return null;
//     }
//   }

//   @override
//   Future<String?> get idToken async {
//     final token =
//         await _googleSignInAccount?.authentication.then((auth) => auth.idToken);

//     if (token == null) _signOut().then((_) => null);
//     return token;
//   }

//   @override
//   Future<void> signOut() => _signOut();

//   Future<void> _signOut() async {
//     if (_googleSignIn.currentUser == null) return;
//     await _googleSignIn.signOut();
//   }
// }
