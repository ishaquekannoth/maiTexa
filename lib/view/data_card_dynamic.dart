import 'package:flutter/material.dart';
import 'package:mai_texa/model/song_detail_model.dart';

class NameNumberCard extends StatelessWidget {
  const NameNumberCard({
    required this.musicData,
    Key? key,
  }) : super(key: key);
  final Results musicData;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWidget(
                text: "Artist Name: ${musicData.artistName ?? "No data"}",
                fontSize: 20,
              ),
              TitleWidget(
                text: "Description: ${musicData.description ?? "No data"}",
                fontSize: 20,
              ),
              TitleWidget(
                text: "Price :${musicData.collectionPrice ?? "No data"}",
                fontSize: 20,
              ),
              TitleWidget(
                text: "Country: ${musicData.country ?? "No data"}",
                fontSize: 20,
              ),
              TitleWidget(
                text: "Genre: ${musicData.primaryGenreName ?? "No data"}",
                fontSize: 20,
              ),
            ],
          ),
        ));
  }
}

class TitleWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight weight;
  const TitleWidget({
    Key? key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 20,
    this.weight = FontWeight.w100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
    );
  }
}
