import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioInterceptors extends InterceptorsWrapper {
  DioInterceptors();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers["Accept"] = 'application/json';
    final dynamic data = options.data;
    final String? contentType;
    if (data is FormData) {
      contentType = Headers.multipartFormDataContentType;
    } else if (data is Map) {
      contentType = Headers.formUrlEncodedContentType;
    } else if (data is String) {
      contentType = Headers.jsonContentType;
    } else if (data != null) {
      contentType = Headers.textPlainContentType; // Can be removed if unnecessary.
    } else {
      contentType = null;
    }
    options.contentType = contentType;

    // debugPrint("Debug-Body: ${options.data}");
    // debugPrint("Debug-Body: ${options.uri}");
    // debugPrint("Debug-AppKey: ${options.headers["AppKey"]}");

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    // debugPrint("Debug-Response: ${response.data}");
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    switch (err.response?.statusCode) {
      case 401:
        // UnauthorizedHelper.forceUserRelogin("Your credential has expired, please relogin");
        debugPrint('ONERROR DIO 401');
        break;
      case 403:
        // UnauthorizedHelper.forceUserRelogin("Forbidden, please relogin");
        debugPrint('ONERROR DIO 403');
        break;
      case 500:
        // UnauthorizedHelper.forceUserRelogin("Server Error, please contact administrator and relogin");
        debugPrint('ONERROR DIO 500');
        break;
      default:
        debugPrint('ONERROR DIO ${err.response?.statusCode}');
        break;
    }
    handler.next(err);
  }
}
