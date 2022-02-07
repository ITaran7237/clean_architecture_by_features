// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoinsResponseAdapter extends TypeAdapter<CoinsResponse> {
  @override
  final int typeId = 1;

  @override
  CoinsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoinsResponse(
      fields[0] as String?,
      (fields[1] as List?)?.cast<Data>(),
    );
  }

  @override
  void write(BinaryWriter writer, CoinsResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.message)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoinsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DataAdapter extends TypeAdapter<Data> {
  @override
  final int typeId = 2;

  @override
  Data read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Data(
      fields[0] as CoinInfo?,
      fields[1] as Display?,
    );
  }

  @override
  void write(BinaryWriter writer, Data obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.coinInfo)
      ..writeByte(1)
      ..write(obj.display);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CoinInfoAdapter extends TypeAdapter<CoinInfo> {
  @override
  final int typeId = 3;

  @override
  CoinInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoinInfo(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as Rating?,
      fields[9] as num?,
      fields[10] as num?,
      fields[11] as num?,
      fields[12] as num?,
      fields[13] as String?,
      fields[14] as num?,
      fields[15] as num?,
      fields[16] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CoinInfo obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.fullName)
      ..writeByte(3)
      ..write(obj.internal)
      ..writeByte(4)
      ..write(obj.imageUrl)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.algorithm)
      ..writeByte(7)
      ..write(obj.proofType)
      ..writeByte(8)
      ..write(obj.rating)
      ..writeByte(9)
      ..write(obj.netHashesPerSecond)
      ..writeByte(10)
      ..write(obj.blockNumber)
      ..writeByte(11)
      ..write(obj.blockTime)
      ..writeByte(12)
      ..write(obj.blockReward)
      ..writeByte(13)
      ..write(obj.assetLaunchDate)
      ..writeByte(14)
      ..write(obj.maxSupply)
      ..writeByte(15)
      ..write(obj.type)
      ..writeByte(16)
      ..write(obj.documentType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoinInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RatingAdapter extends TypeAdapter<Rating> {
  @override
  final int typeId = 4;

  @override
  Rating read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Rating(
      fields[0] as Weiss?,
    );
  }

  @override
  void write(BinaryWriter writer, Rating obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.weiss);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RatingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeissAdapter extends TypeAdapter<Weiss> {
  @override
  final int typeId = 5;

  @override
  Weiss read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Weiss(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Weiss obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.rating)
      ..writeByte(1)
      ..write(obj.technologyAdoptionRating)
      ..writeByte(2)
      ..write(obj.marketPerformanceRating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeissAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DisplayAdapter extends TypeAdapter<Display> {
  @override
  final int typeId = 6;

  @override
  Display read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Display(
      fields[0] as USD?,
    );
  }

  @override
  void write(BinaryWriter writer, Display obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.usd);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DisplayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class USDAdapter extends TypeAdapter<USD> {
  @override
  final int typeId = 7;

  @override
  USD read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return USD(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as double?,
      fields[8] as String?,
      fields[9] as String?,
      fields[10] as String?,
      fields[11] as String?,
      fields[12] as String?,
      fields[13] as String?,
      fields[14] as String?,
      fields[15] as String?,
      fields[16] as String?,
      fields[17] as String?,
      fields[18] as String?,
      fields[19] as String?,
      fields[20] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, USD obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.market)
      ..writeByte(2)
      ..write(obj.fromSymbol)
      ..writeByte(3)
      ..write(obj.toSymbol)
      ..writeByte(4)
      ..write(obj.flags)
      ..writeByte(5)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.lastUpdate)
      ..writeByte(7)
      ..write(obj.median)
      ..writeByte(8)
      ..write(obj.lastVolume)
      ..writeByte(9)
      ..write(obj.lastVolumeTo)
      ..writeByte(10)
      ..write(obj.lastTradeIn)
      ..writeByte(11)
      ..write(obj.lastMarket)
      ..writeByte(12)
      ..write(obj.openDay)
      ..writeByte(13)
      ..write(obj.highDay)
      ..writeByte(14)
      ..write(obj.lowDay)
      ..writeByte(15)
      ..write(obj.open24hour)
      ..writeByte(16)
      ..write(obj.high24hour)
      ..writeByte(17)
      ..write(obj.low24hour)
      ..writeByte(18)
      ..write(obj.topTierVolume24hour)
      ..writeByte(19)
      ..write(obj.topTierVolume24hourTo)
      ..writeByte(20)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is USDAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
