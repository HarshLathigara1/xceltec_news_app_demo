import 'package:dio/dio.dart';
import 'package:untitled/api/api_url.dart';

class DioClient {
  static Dio? dio;

  static Dio? getDioClient() {
    if (dio == null) {
      dio = Dio();
      dio!.options.baseUrl = ApiUrl.BASE_URL;

    }
    return dio;
  }
}
