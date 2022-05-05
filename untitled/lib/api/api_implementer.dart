import 'dart:convert';
import 'dart:io';


import 'package:untitled/api/api_url.dart';
import 'package:untitled/dashboard/news_model.dart';


import 'dio_client.dart';

class ApiImplementer {
  static Future<GetNewsListModel> getNewapiImplementer({
    required String q,
    required String from,
    required String sortBy,
    required String pageSize,
    required String page,
  }) async {
    final response = await DioClient.getDioClient()!.get(
      'everything',
      queryParameters: {
        'q': q,
        'from': from,
        'sortBy': sortBy,
        'apiKey': ApiUrl.ACCESS_KEY,
        'pageSize': pageSize,
        'page': page,
      },
    );
    if (response.statusCode == 200) {
      return GetNewsListModel.fromJson(response.data);
    } else {
      throw Exception('Failed to login!');
    }
  }
}
