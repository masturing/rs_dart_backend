import 'package:dart_frog/dart_frog.dart';
import 'package:rs_dart_backend/core/core_system.dart';

Response onRequest(RequestContext context, String id) {
  if (context.request.method == HttpMethod.get) {
    switch (id) {
      case '1':
        return CoreResponse.ok(
          body: {
            'id': 1,
            'name': 'Cabang 1',
            'address': 'Jl. Cabang 1',
            'telp': '081234567890',
            'description': 'Cabang 1 adalah cabang utama',
            'img_url': {
              'preview':
                  'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=',
            },
            'rating': 4.6,
          },
        );
      case '2':
        return CoreResponse.ok(
          body: {
            'id': 2,
            'name': 'Cabang 2',
            'address': 'Jl. Cabang 2',
            'telp': '081234567890',
            'description': 'Cabang 2 adalah cabang kedua',
            'img_url': {
              'preview':
                  'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=',
            },
            'rating': 4.6,
          },
        );

      case '3':
        return CoreResponse.ok(
          body: {
            'id': 3,
            'name': 'Cabang 3',
            'address': 'Jl. Cabang 3',
            'telp': '081234567890',
            'description': 'Cabang 3 adalah cabang ketiga',
            'img_url': {
              'preview':
                  'https://media.istockphoto.com/id/1147544807/vector/thumbnail-image-vector-graphic.jpg?s=612x612&w=0&k=20&c=rnCKVbdxqkjlcs3xH87-9gocETqpspHFXu5dIGB4wuM=',
            },
            'rating': 4.6,
          },
        );
      default:
        return CoreResponse.notFound();
    }
  } else {
    return CoreResponse.methodNotAllowed();
  }
}
