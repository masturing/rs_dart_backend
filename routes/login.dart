import 'package:dart_frog/dart_frog.dart';
import 'package:rs_dart_backend/core/core_system.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method == HttpMethod.post) {
    final body = await context.request.json() as Map<String, dynamic>;
    if (body['username'] == 'admin' && body['password'] == 'admin') {
      return CoreResponse.ok(
        body: {
          'id': 1,
          'username': 'admin',
          'name': 'Administrator',
        },
      );
    } else {
      return CoreResponse.error(
        body: {
          'message': 'Username atau password salah',
        },
      );
    }
  } else {
    return CoreResponse.methodNotAllowed();
  }
}
