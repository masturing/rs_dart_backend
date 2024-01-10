import 'package:dart_frog/dart_frog.dart';
import 'package:rs_dart_backend/core/core_system.dart';

Response onRequest(RequestContext context) {
  if (context.request.method == HttpMethod.get) {
    return CoreResponse.ok(
      body: {
        'data': [
          {
            'id': 1,
            'name': 'Pembelian bahan baku cabang 1',
            'amount': 900000,
            'ref_id': '1',
            'ref_type': 'cabang',
            'created_at': '2021-01-01 00:00:00',
            'flag': 'out',
          },
          {
            'id': 2,
            'name': 'Keuntungan lebih dari cabang 2',
            'amount': 600000,
            'ref_id': '2',
            'ref_type': 'cabang',
            'created_at': '2021-02-01 00:00:00',
            'flag': 'in',
          },
          {
            'id': 3,
            'name': 'Pembelian bahan baku cabang 1',
            'amount': 90000,
            'ref_id': '1',
            'ref_type': 'cabang',
            'created_at': '2021-03-01 00:00:00',
            'flag': 'out',
          },
        ],
      },
    );
  } else {
    return CoreResponse.methodNotAllowed();
  }
}
