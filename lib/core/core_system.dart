import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

class CoreResponse {
  static Response ok({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.ok,
      body: {
        'status': true,
        'message': 'Success',
        'data': body,
      },
    );
  }

  static Response error({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        'status': false,
        'message': 'Error',
        'messageError': body,
      },
    );
  }

  static Response notFound({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {
        'status': false,
        'message': 'Not Found',
        'data': body,
      },
    );
  }

  static Response unauthorized({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: {
        'status': false,
        'message': 'Unauthorized',
        'data': body,
      },
    );
  }

  static Response forbidden({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: {
        'status': false,
        'message': 'Forbidden',
        'data': body,
      },
    );
  }

  static Response methodNotAllowed({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.methodNotAllowed,
      body: {
        'status': false,
        'message': 'Method Not Allowed',
        'data': body,
      },
    );
  }

  static Response internalServerError({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: {
        'status': false,
        'message': 'Internal Server Error',
        'data': body,
      },
    );
  }

  static Response badGateway({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.badGateway,
      body: {
        'status': false,
        'message': 'Bad Gateway',
        'data': body,
      },
    );
  }

  static Response serviceUnavailable({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.serviceUnavailable,
      body: {
        'status': false,
        'message': 'Service Unavailable',
        'data': body,
      },
    );
  }

  static Response gatewayTimeout({Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: HttpStatus.gatewayTimeout,
      body: {
        'status': false,
        'message': 'Gateway Timeout',
        'data': body,
      },
    );
  }

  static Response custom({int statusCode = 200, Map<String, dynamic>? body}) {
    return Response.json(
      statusCode: statusCode,
      body: body,
    );
  }
}
