import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../utils/constants_manager.dart';

@singleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> get(String endPoint,
      {Map<String, dynamic>? headers, Map<String, dynamic>? query}) {
    return dio.get(AppConstants.baseUrl + endPoint,
        queryParameters: query,
        options: Options(
          headers: headers,
          validateStatus: (status) => true,
        ));
  }

  Future<Response> post(String endPoint,
      {Map<String, dynamic>? headers, Map<String, dynamic>? body}) {
    return dio.post(AppConstants.baseUrl + endPoint,
        data: body,
        options: Options(
          headers: headers,
          validateStatus: (status) => true,
        ));
  }

  Future<Response> delete(String endPoint,
      {Map<String, dynamic>? headers, Map<String, dynamic>? body}) {
    return dio.delete(AppConstants.baseUrl + endPoint,
        data: body,
        options: Options(
          headers: headers,
          validateStatus: (status) => true,
        ));
  }

  Future<Response> patch(String endPoint,
      {Map<String, dynamic>? headers, Map<String, dynamic>? body}) {
    return dio.patch(AppConstants.baseUrl + endPoint,
        data: body,
        options: Options(
          headers: headers,
          validateStatus: (status) => true,
        ));
  }

  Future<Response> put(String endPoint,
      {Map<String, dynamic>? headers, Map<String, dynamic>? body}) {
    return dio.put(AppConstants.baseUrl + endPoint,
        data: body,
        options: Options(
          headers: headers,
          validateStatus: (status) => true,
        ));
  }
}
