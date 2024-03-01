// part of 'network_request.dart';

// class _InterceptorsWrapper extends InterceptorsWrapper {
//   final VoidCallback? onUnauthorized;

//   _InterceptorsWrapper(this.onUnauthorized)
//       : super(
//           onRequest: (options, handler) async {
//             // Add User-Agent Client Hints
//             options.headers.addAll(await userAgentClientHintsHeader());

//             return handler.next(options);
//           },
//           onResponse: (response, handler) async {
//             if (response.statusCode == 401) onUnauthorized;

//             return handler.next(response);
//           },
//           onError: (e, handler) {
//             if (e.response?.statusCode == 401) onUnauthorized;

//             return handler.next(e);
//           },
//         );
// }
