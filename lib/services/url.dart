import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

const apiUrl = "https://itunes.apple.com/search?term=radiohead";
Future<bool> isConnectionOk() async {
  final result = await InternetConnectionChecker().hasConnection;
  return result;
}

class DioService {
  static final dio = Dio(BaseOptions(baseUrl: apiUrl));
  static Future<dynamic> postMethod(
      {required String url, required value}) async {
    return await dio.post(url, data: value).then((value) => value);
  }
  static Future<dynamic> getMethod(
      {required String url}) async {
    return await dio.get(url).then((value) => value);
  }
}

