class SongsModel {
  int? resultCount;
  List<Results>? results;

  SongsModel({this.resultCount, this.results});

  SongsModel.fromJson(Map<String, dynamic> json) {
    resultCount = json['resultCount'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resultCount'] = resultCount;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['wrapperType'] = wrapperType;
    data['artistId'] = artistId;
    data['collectionId'] = collectionId;
    data['artistName'] = artistName;
    data['collectionName'] = collectionName;
    data['collectionCensoredName'] = collectionCensoredName;
    data['artistViewUrl'] = artistViewUrl;
    data['collectionViewUrl'] = collectionViewUrl;
    data['artworkUrl60'] = artworkUrl60;
    data['artworkUrl100'] = artworkUrl100;
    data['collectionPrice'] = collectionPrice;
    data['collectionExplicitness'] = collectionExplicitness;
    data['trackCount'] = trackCount;
    data['copyright'] = copyright;
    data['country'] = country;
    data['currency'] = currency;
    data['releaseDate'] = releaseDate;
    data['primaryGenreName'] = primaryGenreName;
    data['previewUrl'] = previewUrl;
    data['description'] = description;
    data['amgArtistId'] = amgArtistId;
    data['kind'] = kind;
    data['trackId'] = trackId;
    data['trackName'] = trackName;
    data['trackCensoredName'] = trackCensoredName;
    data['trackViewUrl'] = trackViewUrl;
    data['artworkUrl30'] = artworkUrl30;
    data['trackPrice'] = trackPrice;
    data['trackExplicitness'] = trackExplicitness;
    data['discCount'] = discCount;
    data['discNumber'] = discNumber;
    data['trackNumber'] = trackNumber;
    data['trackTimeMillis'] = trackTimeMillis;
    data['isStreamable'] = isStreamable;
    data['contentAdvisoryRating'] = contentAdvisoryRating;
    data['collectionArtistId'] = collectionArtistId;
    data['collectionArtistName'] = collectionArtistName;
    return data;
  }
}
