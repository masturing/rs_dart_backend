import 'package:dart_frog/dart_frog.dart';
import 'package:rs_dart_backend/core/core_system.dart';

Response onRequest(RequestContext context, String id) {
  if (context.request.method == HttpMethod.get) {
    switch (id) {
      case '1':
        return CoreResponse.ok(
          body: {
            'id': 1,
            'name': 'Pembelian bahan baku cabang 1',
            'amount': 900000,
            'ref_id': '1',
            'ref_type': 'cabang',
            'created_at': '2021-01-01 00:00:00',
            'flag': 'out',
          },
        );
      case '2':
        return CoreResponse.ok(
          body: {
            'id': 2,
            'name': 'Keuntungan lebih dari cabang 2',
            'amount': 600000,
            'ref_id': '2',
            'ref_type': 'cabang',
            'created_at': '2021-02-01 00:00:00',
            'flag': 'in',
          },
        );

      case '3':
        return CoreResponse.ok(
          body: {
            'id': 3,
            'name': 'Pembelian bahan baku cabang 1',
            'amount': 90000,
            'ref_id': '1',
            'ref_type': 'cabang',
            'created_at': '2021-03-01 00:00:00',
            'flag': 'out',
          },
        );
      default:
        return CoreResponse.notFound();
    }
  } else {
    return CoreResponse.methodNotAllowed();
  }
}
