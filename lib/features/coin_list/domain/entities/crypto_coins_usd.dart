import 'package:equatable/equatable.dart';

class CryptoCoinsUSD extends Equatable {
  final String? type;
  final String? market;
  final String? fromSymbol;
  final String? toSymbol;
  final String? flags;
  final String? price;
  final String? lastUpdate;
  final String? lastVolume;
  final String? lastVolumeTo;
  final String? lastTradeIn;
  final String? lastMarket;
  final String? openDay;
  final String? highDay;
  final String? lowDay;
  final String? open24hour;
  final String? high24hour;
  final String? low24hour;
  final String? topTierVolume24hour;
  final String? topTierVolume24hourTo;
  final String? imageUrl;

  const CryptoCoinsUSD(
      {this.type,
      this.market,
      this.fromSymbol,
      this.toSymbol,
      this.flags,
      this.price,
      this.lastUpdate,
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
      this.imageUrl});

  @override
  List<Object?> get props => [
        type,
        market,
        fromSymbol,
        toSymbol,
        flags,
        price,
        lastUpdate,
        lastVolume,
        lastVolumeTo,
        lastTradeIn,
        lastMarket,
        openDay,
        highDay,
        lowDay,
        open24hour,
        high24hour,
        low24hour,
        topTierVolume24hour,
        topTierVolume24hourTo,
        imageUrl
      ];

  @override
  bool get stringify => true;
}
