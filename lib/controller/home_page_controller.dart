
import 'package:flutter/cupertino.dart';
import 'package:mai_texa/model/song_detail_model.dart';
import 'package:mai_texa/services/api_data_fetch.dart';

class HomePageViewModel extends ChangeNotifier {
  List<Results> searchResults = [];
  HomePageViewModel(context){
    fetchAllSongs(context);
  }
  fetchAllSongs(context) async {
    final response = await FetchData().fetchDataFromNetwork(context);
    if (response != null) {
      searchResults.clear();
      searchResults.addAll(response.results!);
    } else {
      return [];
    }
    notifyListeners();
  }
}
