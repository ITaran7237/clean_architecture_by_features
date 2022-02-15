import 'package:drift/drift.dart';

class Coins extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get coinId => integer()();
  TextColumn get name => text().withLength(min: 0, max: 50)();
  TextColumn get fullName => text().withLength(min: 0, max: 50)();
  TextColumn get marketPrice => text().withLength(min: 0, max: 50)();
}

class CoinsUsdData extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get coinId => integer()();
  TextColumn get type => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get market => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get fromSymbol => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get toSymbol => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get flags => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get price => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get lastUpdate => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get lastVolume => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get lastVolumeTo => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get lastTradeIn => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get lastMarket => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get openDay => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get highDay => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get lowDay => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get open24hour => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get high24hour => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get low24hour => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get topTierVolume24hour => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get topTierVolume24hourTo => text().withLength(min: 0, max: 50).nullable()();
  TextColumn get imageUrl => text().withLength(min: 0, max: 70).nullable()();
}
