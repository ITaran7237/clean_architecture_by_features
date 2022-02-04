class CoinsResponse {
  String? message;
  List<Data>? data;

  CoinsResponse.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  CoinInfo? coinInfo;
  Display? display;

  Data.fromJson(Map<String, dynamic> json) {
    coinInfo =
        json['CoinInfo'] != null ? CoinInfo.fromJson(json['CoinInfo']) : null;
    display = json['DISPLAY'] != null ? Display.fromJson(json['DISPLAY']) : null;
  }
}

class CoinInfo {
  String? id;
  String? name;
  String? fullName;
  String? internal;
  String? imageUrl;
  String? url;
  String? algorithm;
  String? proofType;
  Rating? rating;
  num? netHashesPerSecond;
  num? blockNumber;
  num? blockTime;
  num? blockReward;
  String? assetLaunchDate;
  num? maxSupply;
  num? type;
  String? documentType;

  CoinInfo.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    fullName = json['FullName'];
    internal = json['Internal'];
    imageUrl = json['ImageUrl'];
    url = json['Url'];
    algorithm = json['Algorithm'];
    proofType = json['ProofType'];
    rating =
        json['Rating'] != null ? Rating.fromJson(json['Rating']) : null;
    netHashesPerSecond = json['NetHashesPerSecond'];
    blockNumber = json['BlockNumber'];
    blockTime = json['BlockTime'];
    blockReward = json['BlockReward'];
    assetLaunchDate = json['AssetLaunchDate'];
    maxSupply = json['MaxSupply'];
    type = json['Type'];
    documentType = json['DocumentType'];
  }
}

class Rating {
  Weiss? weiss;

  Rating({this.weiss});

  Rating.fromJson(Map<String, dynamic> json) {
    weiss = json['Weiss'] != null ? Weiss.fromJson(json['Weiss']) : null;
  }
}

class Weiss {
  String? rating;
  String? technologyAdoptionRating;
  String? marketPerformanceRating;

  Weiss.fromJson(Map<String, dynamic> json) {
    rating = json['Rating'];
    technologyAdoptionRating = json['TechnologyAdoptionRating'];
    marketPerformanceRating = json['MarketPerformanceRating'];
  }
}

class Display {
  USD? usd;

  Display.fromJson(Map<String, dynamic> json) {
    usd = json['USD'] != null ? USD.fromJson(json['USD']) : null;
  }
}

class USD {
  String? type;
  String? market;
  String? fromSymbol;
  String? toSymbol;
  String? flags;
  String? price;
  String? lastUpdate;
  double? median;
  String? lastVolume;
  String? lastVolumeTo;
  String? lastTradeIn;
  String? lastMarket;
  String? openDay;
  String? highDay;
  String? lowDay;
  String? open24hour;
  String? high24hour;
  String? low24hour;
  String? topTierVolume24hour;
  String? topTierVolume24hourTo;
  String? imageUrl;

  USD.fromJson(Map<String, dynamic> json) {
    type = json['TYPE'];
    market = json['MARKET'];
    fromSymbol = json['FROMSYMBOL'];
    toSymbol = json['TOSYMBOL'];
    flags = json['FLAGS'];
    price = json['PRICE'];
    lastUpdate = json['LASTUPDATE'];
    median = json['MEDIAN'];
    lastVolume = json['LASTVOLUME'];
    lastVolumeTo = json['LASTVOLUMETO'];
    lastTradeIn = json['LASTTRADEID'];
    lastMarket = json['LASTMARKET'];
    openDay = json['OPENDAY'];
    highDay = json['HIGHDAY'];
    lowDay = json['LOWDAY'];
    open24hour = json['OPEN24HOUR'];
    high24hour = json['HIGH24HOUR'];
    low24hour = json['LOW24HOUR'];
    topTierVolume24hour = json['TOPTIERVOLUME24HOUR'];
    topTierVolume24hourTo = json['TOPTIERVOLUME24HOURTO'];
    imageUrl = json['IMAGEURL'];
  }
}