import 'package:flutter/material.dart';
import 'package:mai_texa/model/song_detail_model.dart';
import 'package:mai_texa/view/data_card_dynamic.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final song = ModalRoute.of(context)!.settings.arguments as Results;
    return SafeArea(
      child: (Scaffold(
        appBar: AppBar(
            centerTitle: true, title: Text(song.artistName ?? "No Name")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                width: size.width,
                height: size.height * 0.2,
                child: Image.network(song.artworkUrl100.toString()),
              ),
              Column(
                children: [
                  NameNumberCard(musicData: song),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
