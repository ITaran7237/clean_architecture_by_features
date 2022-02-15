import 'package:clean_architecture_app/features/coin_list/domain/entities/crypto_coins_usd.dart';
import 'package:json_annotation/json_annotation.dart' as j;

@j.JsonSerializable()
class CoinsUSDModel extends CryptoCoinsUSD {
  const CoinsUSDModel(
      {String? type,
      String? market,
      String? fromSymbol,
      String? toSymbol,
      String? flags,
      String? price,
      String? lastUpdate,
      String? lastVolume,
      String? lastVolumeTo,
      String? lastTradeIn,
      String? lastMarket,
      String? openDay,
      String? highDay,
      String? lowDay,
      String? open24hour,
      String? high24hour,
      String? low24hour,
      String? topTierVolume24hour,
      String? topTierVolume24hourTo,
      String? imageUrl})
      : super(
            type: type,
            market: market,
            fromSymbol: fromSymbol,
            toSymbol: toSymbol,
            flags: flags,
            price: price,
            lastUpdate: lastUpdate,
            lastVolume: lastVolume,
            lastVolumeTo: lastVolumeTo,
            lastTradeIn: lastTradeIn,
            lastMarket: lastMarket,
            openDay: openDay,
            highDay: highDay,
            lowDay: lowDay,
            open24hour: open24hour,
            high24hour: high24hour,
            topTierVolume24hour: topTierVolume24hour,
            topTierVolume24hourTo: topTierVolume24hourTo,
            imageUrl: imageUrl);

  factory CoinsUSDModel.fromJson(Map<String, dynamic> json) {
    return CoinsUSDModel(
        type: json['TYPE'],
        market: json['MARKET'],
        fromSymbol: json['FROMSYMBOL'],
        toSymbol: json['TOSYMBOL'],
        flags: json['FLAGS'],
        price: json['PRICE'],
        lastUpdate: json['LASTUPDATE'],
        lastVolume: json['LASTVOLUME'],
        lastVolumeTo: json['LASTVOLUMETO'],
        lastTradeIn: json['LASTTRADEID'],
        lastMarket: json['LASTMARKET'],
        openDay: json['OPENDAY'],
        highDay: json['HIGHDAY'],
        lowDay: json['LOWDAY'],
        open24hour: json['OPEN24HOUR'],
        high24hour: json['HIGH24HOUR'],
        low24hour: json['LOW24HOUR'],
        topTierVolume24hour: json['TOPTIERVOLUME24HOUR'],
        topTierVolume24hourTo: json['TOPTIERVOLUME24HOURTO'],
        imageUrl: json['IMAGEURL']);
  }

  factory CoinsUSDModel.fromJsonDB(Map<String, dynamic> json) {
    return CoinsUSDModel(
        type: json['type'],
        market: json['market'],
        fromSymbol: json['fromSymbol'],
        toSymbol: json['toSymbol'],
        flags: json['flags'],
        price: json['price'],
        lastUpdate: json['lastUpdate'],
        lastVolume: json['lastVolume'],
        lastVolumeTo: json['lastVolumeTo'],
        lastTradeIn: json['lastTradeIn'],
        lastMarket: json['lastMarket'],
        openDay: json['openDay'],
        highDay: json['highDay'],
        lowDay: json['lowDay'],
        open24hour: json['open24hour'],
        high24hour: json['high24hour'],
        low24hour: json['low24hour'],
        topTierVolume24hour: json['topTierVolume24hour'],
        topTierVolume24hourTo: json['topTierVolume24hourTo'],
        imageUrl: json['imageUrl']);
  }

  Map<String, dynamic> toJson() {
    return {
      'TYPE': type,
      'MARKET': market,
      'FROMSYMBOL': fromSymbol,
      'TOSYMBOL': toSymbol,
      'FLAGS': flags,
      'PRICE': price,
      'LASTUPDATE': lastUpdate,
      'LASTVOLUME': lastVolume,
      'LASTVOLUMETO': lastVolumeTo,
      'LASTTRADEID': lastTradeIn,
      'LASTMARKET': lastMarket,
      'OPENDAY': openDay,
      'HIGHDAY': highDay,
      'LOWDAY': lowDay,
      'OPEN24HOUR': open24hour,
      'HIGH24HOUR': high24hour,
      'LOW24HOUR': low24hour,
      'TOPTIERVOLUME24HOUR': topTierVolume24hour,
      'TOPTIERVOLUME24HOURTO': topTierVolume24hourTo,
      'IMAGEURL': imageUrl
    };
  }
}
