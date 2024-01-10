import 'package:dart_frog/dart_frog.dart';
import 'package:rs_dart_backend/core/core_system.dart';

Response onRequest(RequestContext context) {
  if (context.request.method == HttpMethod.get) {
    return CoreResponse.ok(
      body: {
        'data': [
          {
            'id': 1,
            'name': 'Cabang 1',
            'address': 'Jl. Cabang 1',
            'telp': '081234567890',
            'description': 'Cabang 1 adalah cabang utama',
          },
          {
            'id': 2,
            'name': 'Cabang 2',
            'address': 'Jl. Cabang 2',
            'telp': '081234567890',
            'description': 'Cabang 2 adalah cabang kedua',
          },
          {
            'id': 3,
            'name': 'Cabang 3',
            'address': 'Jl. Cabang 3',
            'telp': '081234567890',
            'description': 'Cabang 3 adalah cabang ketiga',
          },
        ],
      },
    );
  } else {
    return CoreResponse.methodNotAllowed();
  }
}
