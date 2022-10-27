import 'dart:convert';

SongsModel songsModelFromJson(String str) =>
    SongsModel.fromJson(json.decode(str));

class SongsModel {
  int? resultCount;
  List<Results>? results;

  SongsModel({this.resultCount, this.results});

  factory SongsModel.fromJson(Map<String, dynamic> json) => SongsModel(
        resultCount: json["resultCount"],
        results:
            List<Results>.from(json["results"].map((x) => Results.fromJson(x))),
      );
}

class Results {
  String? wrapperType;
  int? artistId;
  int? collectionId;
  String? artistName;
  String? collectionName;
  String? collectionCensoredName;
  String? artistViewUrl;
  String? collectionViewUrl;
  String? artworkUrl60;
  String? artworkUrl100;
  double? collectionPrice;
  String? collectionExplicitness;
  int? trackCount;
  String? copyright;
  String? country;
  String? currency;
  String? releaseDate;
  String? primaryGenreName;
  String? previewUrl;
  String? description;
  int? amgArtistId;
  String? kind;
  int? trackId;
  String? trackName;
  String? trackCensoredName;
  String? trackViewUrl;
  String? artworkUrl30;
  double? trackPrice;
  String? trackExplicitness;
  int? discCount;
  int? discNumber;
  int? trackNumber;
  int? trackTimeMillis;
  bool? isStreamable;
  String? contentAdvisoryRating;
  int? collectionArtistId;
  String? collectionArtistName;

  Results(
      {this.wrapperType,
      this.artistId,
      this.collectionId,
      this.artistName,
      this.collectionName,
      this.collectionCensoredName,
      this.artistViewUrl,
      this.collectionViewUrl,
      this.artworkUrl60,
      this.artworkUrl100,
      this.collectionPrice,
      this.collectionExplicitness,
      this.trackCount,
      this.copyright,
      this.country,
      this.currency,
      this.releaseDate,
      this.primaryGenreName,
      this.previewUrl,
      this.description,
      this.amgArtistId,
      this.kind,
      this.trackId,
      this.trackName,
      this.trackCensoredName,
      this.trackViewUrl,
      this.artworkUrl30,
      this.trackPrice,
      this.trackExplicitness,
      this.discCount,
      this.discNumber,
      this.trackNumber,
      this.trackTimeMillis,
      this.isStreamable,
      this.contentAdvisoryRating,
      this.collectionArtistId,
      this.collectionArtistName});

  Results.fromJson(Map<String, dynamic> json) {
    wrapperType = json['wrapperType'];
    artistId = json['artistId'];
    collectionId = json['collectionId'];
    artistName = json['artistName'];
    collectionName = json['collectionName'];
    collectionCensoredName = json['collectionCensoredName'];
    artistViewUrl = json['artistViewUrl'];
    collectionViewUrl = json['collectionViewUrl'];
    artworkUrl60 = json['artworkUrl60'];
    artworkUrl100 = json['artworkUrl100'];
    collectionPrice = json['collectionPrice'];
    collectionExplicitness = json['collectionExplicitness'];
    trackCount = json['trackCount'];
    copyright = json['copyright'];
    country = json['country'];
    currency = json['currency'];
    releaseDate = json['releaseDate'];
    primaryGenreName = json['primaryGenreName'];
    previewUrl = json['previewUrl'];
    description = json['description'];
    amgArtistId = json['amgArtistId'];
    kind = json['kind'];
    trackId = json['trackId'];
    trackName = json['trackName'];
    trackCensoredName = json['trackCensoredName'];
    trackViewUrl = json['trackViewUrl'];
    artworkUrl30 = json['artworkUrl30'];
    trackPrice = json['trackPrice'];
    trackExplicitness = json['trackExplicitness'];
    discCount = json['discCount'];
    discNumber = json['discNumber'];
    trackNumber = json['trackNumber'];
    trackTimeMillis = json['trackTimeMillis'];
    isStreamable = json['isStreamable'];
    contentAdvisoryRating = json['contentAdvisoryRating'];
    collectionArtistId = json['collectionArtistId'];
    collectionArtistName = json['collectionArtistName'];
  }
}
