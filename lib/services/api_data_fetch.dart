import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mai_texa/model/song_detail_model.dart';
import 'package:mai_texa/services/url.dart';

class FetchData {
  Future<SongsModel?> fetchDataFromNetwork() async {
    final connectionOk = await isConnectionOk();
    if (connectionOk) {
      try {
        final response = await DioService.getMethod(url: apiUrl);
        if (response.statusCode >= 200 || response.statusCode <= 299) {
          return SongsModel.fromJson(jsonDecode(response.data)as Map<String,dynamic> );
        }
      } on DioError {
        return SongsModel(resultCount: 0);
      } on Exception {
        return SongsModel(resultCount: 0);
      }
    } else {
      return SongsModel(resultCount: 0);
    }
    return SongsModel(resultCount: 0);
  }
}
