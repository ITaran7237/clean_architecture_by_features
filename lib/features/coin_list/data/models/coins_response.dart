import 'package:hive/hive.dart';

part 'coins_response.g.dart';

@HiveType(typeId: 1)
class CoinsResponse {
  @HiveField(0)
  String? message;
  @HiveField(1)
  List<Data>? data;

  CoinsResponse(this.message, this.data);

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

@HiveType(typeId: 2)
class Data {
  @HiveField(0)
  CoinInfo? coinInfo;
  @HiveField(1)
  Display? display;

  Data(this.coinInfo, this.display);

  Data.fromJson(Map<String, dynamic> json) {
    coinInfo =
        json['CoinInfo'] != null ? CoinInfo.fromJson(json['CoinInfo']) : null;
    display = json['DISPLAY'] != null ? Display.fromJson(json['DISPLAY']) : null;
  }
}

@HiveType(typeId: 3)
class CoinInfo {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? fullName;
  @HiveField(3)
  String? internal;
  @HiveField(4)
  String? imageUrl;
  @HiveField(5)
  String? url;
  @HiveField(6)
  String? algorithm;
  @HiveField(7)
  String? proofType;
  @HiveField(8)
  Rating? rating;
  @HiveField(9)
  num? netHashesPerSecond;
  @HiveField(10)
  num? blockNumber;
  @HiveField(11)
  num? blockTime;
  @HiveField(12)
  num? blockReward;
  @HiveField(13)
  String? assetLaunchDate;
  @HiveField(14)
  num? maxSupply;
  @HiveField(15)
  num? type;
  @HiveField(16)
  String? documentType;

  CoinInfo(
      this.id,
      this.name,
      this.fullName,
      this.internal,
      this.imageUrl,
      this.url,
      this.algorithm,
      this.proofType,
      this.rating,
      this.netHashesPerSecond,
      this.blockNumber,
      this.blockTime,
      this.blockReward,
      this.assetLaunchDate,
      this.maxSupply,
      this.type,
      this.documentType);

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

@HiveType(typeId: 4)
class Rating {
  @HiveField(0)
  Weiss? weiss;

  Rating(this.weiss);

  Rating.fromJson(Map<String, dynamic> json) {
    weiss = json['Weiss'] != null ? Weiss.fromJson(json['Weiss']) : null;
  }
}

@HiveType(typeId: 5)
class Weiss {
  @HiveField(0)
  String? rating;
  @HiveField(1)
  String? technologyAdoptionRating;
  @HiveField(2)
  String? marketPerformanceRating;

  Weiss(this.rating, this.technologyAdoptionRating, this.marketPerformanceRating);

  Weiss.fromJson(Map<String, dynamic> json) {
    rating = json['Rating'];
    technologyAdoptionRating = json['TechnologyAdoptionRating'];
    marketPerformanceRating = json['MarketPerformanceRating'];
  }
}

@HiveType(typeId: 6)
class Display {
  @HiveField(0)
  USD? usd;

  Display(this.usd);

  Display.fromJson(Map<String, dynamic> json) {
    usd = json['USD'] != null ? USD.fromJson(json['USD']) : null;
  }
}

@HiveType(typeId: 7)
class USD {
  @HiveField(0)
  String? type;
  @HiveField(1)
  String? market;
  @HiveField(2)
  String? fromSymbol;
  @HiveField(3)
  String? toSymbol;
  @HiveField(4)
  String? flags;
  @HiveField(5)
  String? price;
  @HiveField(6)
  String? lastUpdate;
  @HiveField(7)
  double? median;
  @HiveField(8)
  String? lastVolume;
  @HiveField(9)
  String? lastVolumeTo;
  @HiveField(10)
  String? lastTradeIn;
  @HiveField(11)
  String? lastMarket;
  @HiveField(12)
  String? openDay;
  @HiveField(13)
  String? highDay;
  @HiveField(14)
  String? lowDay;
  @HiveField(15)
  String? open24hour;
  @HiveField(16)
  String? high24hour;
  @HiveField(17)
  String? low24hour;
  @HiveField(18)
  String? topTierVolume24hour;
  @HiveField(19)
  String? topTierVolume24hourTo;
  @HiveField(20)
  String? imageUrl;

  USD(
      this.type,
      this.market,
      this.fromSymbol,
      this.toSymbol,
      this.flags,
      this.price,
      this.lastUpdate,
      this.median,
      this.lastVolume,
      this.lastVolumeTo,
      this.lastTradeIn,
      this.lastMarket,
      this.openDay,
      this.highDay,
      this.lowDay,
      this.open24hour,
      this.high24hour,
      this.low24hour,
      this.topTierVolume24hour,
      this.topTierVolume24hourTo,
      this.imageUrl);

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