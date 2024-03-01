class Endpoints {
  const Endpoints._();
  // base
  static const baseUrl = 'http://35.213.168.113/lms/api';
  static const AuthenticationUrl authenticationUrl = AuthenticationUrl(baseUrl);
}

class AuthenticationUrl {
  final String _apiUrl;

  const AuthenticationUrl(this._apiUrl);
  String get loginWithEmailAndPassword => '$_apiUrl/auth/login';
}
