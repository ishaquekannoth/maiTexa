import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mai_texa/model/song_detail_model.dart';
import 'package:mai_texa/services/url.dart';

class FetchData {
  String apiUrl = "https://itunes.apple.com/search?term=radiohead";
  Dio dio = Dio();
  Future<SongsModel?> fetchDataFromNetwork(context) async {
    final connectionOk = await isConnectionOk();
    if (connectionOk) {
      try {
        final response = await dio.get(apiUrl);
        if (response.statusCode! >= 200 || response.statusCode! <= 299) {
          return songsModelFromJson(response.data);
        }
      } on DioError {
        return null;
      } on Exception {
        return null;
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "No Connection",
            textAlign: TextAlign.center,
          )));
      return null;
    }

    return null;
  }
}
