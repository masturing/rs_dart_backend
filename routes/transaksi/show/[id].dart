// ignore_for_file: lines_longer_than_80_chars

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
            'description':
                'Beli bahan baku seperti batu, air, buzzer, dan lain sebagainya',
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
            'description':
                'Keuntungan dari menjual berbagai macam jenis buzzer yang ada',
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
            'description':
                'Beli bahan baku seperti batu, air, buzzer, dan lain sebagainya',
          },
        );
      default:
        return CoreResponse.notFound();
    }
  } else {
    return CoreResponse.methodNotAllowed();
  }
}
