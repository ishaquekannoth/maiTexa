import 'package:flutter/cupertino.dart';
import 'package:mai_texa/model/song_detail_model.dart';
import 'package:mai_texa/services/api_data_fetch.dart';

class HomePageViewModel extends ChangeNotifier {
  List<Results> searchResults = [];
  HomePageViewModel(){
    fetchAllSongs();
  }
  fetchAllSongs() async {
    final response = await FetchData().fetchDataFromNetwork();
    if (response != null) {
      searchResults.clear();
      searchResults.addAll(response.results!);
    } else {
      return [];
    }
    notifyListeners();
  }
}
