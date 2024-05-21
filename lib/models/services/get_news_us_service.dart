import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:newsus/models/get_news_us_response_model.dart';
import 'package:newsus/utils/base_url_util.dart';

class GetNewsUsService {
  final Dio dio = Dio();
  final String newsApiKey = dotenv.get('newsApiKey');

  Future<GetNewsUsResponseModel> getNewsUs() async {
    try {
      String url =
          '${BaseUrlUtil.baseUrl}/top-headlines?country=us&apiKey=$newsApiKey';
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        return GetNewsUsResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load news: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load news: $e');
    }
  }
}
