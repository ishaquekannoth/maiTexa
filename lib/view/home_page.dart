import 'package:flutter/material.dart';
import 'package:mai_texa/controller/home_page_controller.dart';
import 'package:mai_texa/model/song_detail_model.dart';
import 'package:mai_texa/services/routes.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Music"),
      ),
      body: SafeArea(
        child: provider.searchResults.isEmpty
            ? const Center(
                child: Text("OOPs..Unable to fetch the data"),
              )
            : ListView(
                children: provider.searchResults
                    .map((e) => DataCard(songData: e))
                    .toList()),
      ),
    );
  }
}

class DataCard extends StatelessWidget {
  DataCard({
    required this.songData,
    Key? key,
  }) : super(key: key);
  Results songData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.details, arguments: songData);
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(songData.artworkUrl100.toString()),
      ),
      title: Text(songData.artistName.toString()),
      trailing: Text(songData.collectionPrice.toString()),
    );
  }
}
