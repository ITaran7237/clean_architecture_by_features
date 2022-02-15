// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Coin extends DataClass implements Insertable<Coin> {
  final int id;
  final int coinId;
  final String name;
  final String fullName;
  final String marketPrice;
  Coin(
      {required this.id,
      required this.coinId,
      required this.name,
      required this.fullName,
      required this.marketPrice});
  factory Coin.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Coin(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      coinId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}coin_id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      fullName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}full_name'])!,
      marketPrice: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}market_price'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['coin_id'] = Variable<int>(coinId);
    map['name'] = Variable<String>(name);
    map['full_name'] = Variable<String>(fullName);
    map['market_price'] = Variable<String>(marketPrice);
    return map;
  }

  CoinsCompanion toCompanion(bool nullToAbsent) {
    return CoinsCompanion(
      id: Value(id),
      coinId: Value(coinId),
      name: Value(name),
      fullName: Value(fullName),
      marketPrice: Value(marketPrice),
    );
  }

  factory Coin.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Coin(
      id: serializer.fromJson<int>(json['id']),
      coinId: serializer.fromJson<int>(json['coinId']),
      name: serializer.fromJson<String>(json['name']),
      fullName: serializer.fromJson<String>(json['fullName']),
      marketPrice: serializer.fromJson<String>(json['marketPrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'coinId': serializer.toJson<int>(coinId),
      'name': serializer.toJson<String>(name),
      'fullName': serializer.toJson<String>(fullName),
      'marketPrice': serializer.toJson<String>(marketPrice),
    };
  }

  Coin copyWith(
          {int? id,
          int? coinId,
          String? name,
          String? fullName,
          String? marketPrice}) =>
      Coin(
        id: id ?? this.id,
        coinId: coinId ?? this.coinId,
        name: name ?? this.name,
        fullName: fullName ?? this.fullName,
        marketPrice: marketPrice ?? this.marketPrice,
      );
  @override
  String toString() {
    return (StringBuffer('Coin(')
          ..write('id: $id, ')
          ..write('coinId: $coinId, ')
          ..write('name: $name, ')
          ..write('fullName: $fullName, ')
          ..write('marketPrice: $marketPrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, coinId, name, fullName, marketPrice);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Coin &&
          other.id == this.id &&
          other.coinId == this.coinId &&
          other.name == this.name &&
          other.fullName == this.fullName &&
          other.marketPrice == this.marketPrice);
}

class CoinsCompanion extends UpdateCompanion<Coin> {
  final Value<int> id;
  final Value<int> coinId;
  final Value<String> name;
  final Value<String> fullName;
  final Value<String> marketPrice;
  const CoinsCompanion({
    this.id = const Value.absent(),
    this.coinId = const Value.absent(),
    this.name = const Value.absent(),
    this.fullName = const Value.absent(),
    this.marketPrice = const Value.absent(),
  });
  CoinsCompanion.insert({
    this.id = const Value.absent(),
    required int coinId,
    required String name,
    required String fullName,
    required String marketPrice,
  })  : coinId = Value(coinId),
        name = Value(name),
        fullName = Value(fullName),
        marketPrice = Value(marketPrice);
  static Insertable<Coin> custom({
    Expression<int>? id,
    Expression<int>? coinId,
    Expression<String>? name,
    Expression<String>? fullName,
    Expression<String>? marketPrice,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (coinId != null) 'coin_id': coinId,
      if (name != null) 'name': name,
      if (fullName != null) 'full_name': fullName,
      if (marketPrice != null) 'market_price': marketPrice,
    });
  }

  CoinsCompanion copyWith(
      {Value<int>? id,
      Value<int>? coinId,
      Value<String>? name,
      Value<String>? fullName,
      Value<String>? marketPrice}) {
    return CoinsCompanion(
      id: id ?? this.id,
      coinId: coinId ?? this.coinId,
      name: name ?? this.name,
      fullName: fullName ?? this.fullName,
      marketPrice: marketPrice ?? this.marketPrice,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (coinId.present) {
      map['coin_id'] = Variable<int>(coinId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (marketPrice.present) {
      map['market_price'] = Variable<String>(marketPrice.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CoinsCompanion(')
          ..write('id: $id, ')
          ..write('coinId: $coinId, ')
          ..write('name: $name, ')
          ..write('fullName: $fullName, ')
          ..write('marketPrice: $marketPrice')
          ..write(')'))
        .toString();
  }
}

class $CoinsTable extends Coins with TableInfo<$CoinsTable, Coin> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CoinsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _coinIdMeta = const VerificationMeta('coinId');
  @override
  late final GeneratedColumn<int?> coinId = GeneratedColumn<int?>(
      'coin_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _fullNameMeta = const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String?> fullName = GeneratedColumn<String?>(
      'full_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _marketPriceMeta =
      const VerificationMeta('marketPrice');
  @override
  late final GeneratedColumn<String?> marketPrice = GeneratedColumn<String?>(
      'market_price', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, coinId, name, fullName, marketPrice];
  @override
  String get aliasedName => _alias ?? 'coins';
  @override
  String get actualTableName => 'coins';
  @override
  VerificationContext validateIntegrity(Insertable<Coin> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('coin_id')) {
      context.handle(_coinIdMeta,
          coinId.isAcceptableOrUnknown(data['coin_id']!, _coinIdMeta));
    } else if (isInserting) {
      context.missing(_coinIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('market_price')) {
      context.handle(
          _marketPriceMeta,
          marketPrice.isAcceptableOrUnknown(
              data['market_price']!, _marketPriceMeta));
    } else if (isInserting) {
      context.missing(_marketPriceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Coin map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Coin.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CoinsTable createAlias(String alias) {
    return $CoinsTable(attachedDatabase, alias);
  }
}

class CoinsUsdDataData extends DataClass
    implements Insertable<CoinsUsdDataData> {
  final int id;
  final int coinId;
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
  CoinsUsdDataData(
      {required this.id,
      required this.coinId,
      this.type,
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
  factory CoinsUsdDataData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CoinsUsdDataData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      coinId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}coin_id'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      market: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}market']),
      fromSymbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}from_symbol']),
      toSymbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}to_symbol']),
      flags: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}flags']),
      price: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}price']),
      lastUpdate: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_update']),
      lastVolume: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_volume']),
      lastVolumeTo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_volume_to']),
      lastTradeIn: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_trade_in']),
      lastMarket: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_market']),
      openDay: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}open_day']),
      highDay: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}high_day']),
      lowDay: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}low_day']),
      open24hour: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}open24hour']),
      high24hour: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}high24hour']),
      low24hour: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}low24hour']),
      topTierVolume24hour: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}top_tier_volume24hour']),
      topTierVolume24hourTo: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}top_tier_volume24hour_to']),
      imageUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_url']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['coin_id'] = Variable<int>(coinId);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String?>(type);
    }
    if (!nullToAbsent || market != null) {
      map['market'] = Variable<String?>(market);
    }
    if (!nullToAbsent || fromSymbol != null) {
      map['from_symbol'] = Variable<String?>(fromSymbol);
    }
    if (!nullToAbsent || toSymbol != null) {
      map['to_symbol'] = Variable<String?>(toSymbol);
    }
    if (!nullToAbsent || flags != null) {
      map['flags'] = Variable<String?>(flags);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<String?>(price);
    }
    if (!nullToAbsent || lastUpdate != null) {
      map['last_update'] = Variable<String?>(lastUpdate);
    }
    if (!nullToAbsent || lastVolume != null) {
      map['last_volume'] = Variable<String?>(lastVolume);
    }
    if (!nullToAbsent || lastVolumeTo != null) {
      map['last_volume_to'] = Variable<String?>(lastVolumeTo);
    }
    if (!nullToAbsent || lastTradeIn != null) {
      map['last_trade_in'] = Variable<String?>(lastTradeIn);
    }
    if (!nullToAbsent || lastMarket != null) {
      map['last_market'] = Variable<String?>(lastMarket);
    }
    if (!nullToAbsent || openDay != null) {
      map['open_day'] = Variable<String?>(openDay);
    }
    if (!nullToAbsent || highDay != null) {
      map['high_day'] = Variable<String?>(highDay);
    }
    if (!nullToAbsent || lowDay != null) {
      map['low_day'] = Variable<String?>(lowDay);
    }
    if (!nullToAbsent || open24hour != null) {
      map['open24hour'] = Variable<String?>(open24hour);
    }
    if (!nullToAbsent || high24hour != null) {
      map['high24hour'] = Variable<String?>(high24hour);
    }
    if (!nullToAbsent || low24hour != null) {
      map['low24hour'] = Variable<String?>(low24hour);
    }
    if (!nullToAbsent || topTierVolume24hour != null) {
      map['top_tier_volume24hour'] = Variable<String?>(topTierVolume24hour);
    }
    if (!nullToAbsent || topTierVolume24hourTo != null) {
      map['top_tier_volume24hour_to'] =
          Variable<String?>(topTierVolume24hourTo);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String?>(imageUrl);
    }
    return map;
  }

  CoinsUsdDataCompanion toCompanion(bool nullToAbsent) {
    return CoinsUsdDataCompanion(
      id: Value(id),
      coinId: Value(coinId),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      market:
          market == null && nullToAbsent ? const Value.absent() : Value(market),
      fromSymbol: fromSymbol == null && nullToAbsent
          ? const Value.absent()
          : Value(fromSymbol),
      toSymbol: toSymbol == null && nullToAbsent
          ? const Value.absent()
          : Value(toSymbol),
      flags:
          flags == null && nullToAbsent ? const Value.absent() : Value(flags),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      lastUpdate: lastUpdate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdate),
      lastVolume: lastVolume == null && nullToAbsent
          ? const Value.absent()
          : Value(lastVolume),
      lastVolumeTo: lastVolumeTo == null && nullToAbsent
          ? const Value.absent()
          : Value(lastVolumeTo),
      lastTradeIn: lastTradeIn == null && nullToAbsent
          ? const Value.absent()
          : Value(lastTradeIn),
      lastMarket: lastMarket == null && nullToAbsent
          ? const Value.absent()
          : Value(lastMarket),
      openDay: openDay == null && nullToAbsent
          ? const Value.absent()
          : Value(openDay),
      highDay: highDay == null && nullToAbsent
          ? const Value.absent()
          : Value(highDay),
      lowDay:
          lowDay == null && nullToAbsent ? const Value.absent() : Value(lowDay),
      open24hour: open24hour == null && nullToAbsent
          ? const Value.absent()
          : Value(open24hour),
      high24hour: high24hour == null && nullToAbsent
          ? const Value.absent()
          : Value(high24hour),
      low24hour: low24hour == null && nullToAbsent
          ? const Value.absent()
          : Value(low24hour),
      topTierVolume24hour: topTierVolume24hour == null && nullToAbsent
          ? const Value.absent()
          : Value(topTierVolume24hour),
      topTierVolume24hourTo: topTierVolume24hourTo == null && nullToAbsent
          ? const Value.absent()
          : Value(topTierVolume24hourTo),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
    );
  }

  factory CoinsUsdDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CoinsUsdDataData(
      id: serializer.fromJson<int>(json['id']),
      coinId: serializer.fromJson<int>(json['coinId']),
      type: serializer.fromJson<String?>(json['type']),
      market: serializer.fromJson<String?>(json['market']),
      fromSymbol: serializer.fromJson<String?>(json['fromSymbol']),
      toSymbol: serializer.fromJson<String?>(json['toSymbol']),
      flags: serializer.fromJson<String?>(json['flags']),
      price: serializer.fromJson<String?>(json['price']),
      lastUpdate: serializer.fromJson<String?>(json['lastUpdate']),
      lastVolume: serializer.fromJson<String?>(json['lastVolume']),
      lastVolumeTo: serializer.fromJson<String?>(json['lastVolumeTo']),
      lastTradeIn: serializer.fromJson<String?>(json['lastTradeIn']),
      lastMarket: serializer.fromJson<String?>(json['lastMarket']),
      openDay: serializer.fromJson<String?>(json['openDay']),
      highDay: serializer.fromJson<String?>(json['highDay']),
      lowDay: serializer.fromJson<String?>(json['lowDay']),
      open24hour: serializer.fromJson<String?>(json['open24hour']),
      high24hour: serializer.fromJson<String?>(json['high24hour']),
      low24hour: serializer.fromJson<String?>(json['low24hour']),
      topTierVolume24hour:
          serializer.fromJson<String?>(json['topTierVolume24hour']),
      topTierVolume24hourTo:
          serializer.fromJson<String?>(json['topTierVolume24hourTo']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'coinId': serializer.toJson<int>(coinId),
      'type': serializer.toJson<String?>(type),
      'market': serializer.toJson<String?>(market),
      'fromSymbol': serializer.toJson<String?>(fromSymbol),
      'toSymbol': serializer.toJson<String?>(toSymbol),
      'flags': serializer.toJson<String?>(flags),
      'price': serializer.toJson<String?>(price),
      'lastUpdate': serializer.toJson<String?>(lastUpdate),
      'lastVolume': serializer.toJson<String?>(lastVolume),
      'lastVolumeTo': serializer.toJson<String?>(lastVolumeTo),
      'lastTradeIn': serializer.toJson<String?>(lastTradeIn),
      'lastMarket': serializer.toJson<String?>(lastMarket),
      'openDay': serializer.toJson<String?>(openDay),
      'highDay': serializer.toJson<String?>(highDay),
      'lowDay': serializer.toJson<String?>(lowDay),
      'open24hour': serializer.toJson<String?>(open24hour),
      'high24hour': serializer.toJson<String?>(high24hour),
      'low24hour': serializer.toJson<String?>(low24hour),
      'topTierVolume24hour': serializer.toJson<String?>(topTierVolume24hour),
      'topTierVolume24hourTo':
          serializer.toJson<String?>(topTierVolume24hourTo),
      'imageUrl': serializer.toJson<String?>(imageUrl),
    };
  }

  CoinsUsdDataData copyWith(
          {int? id,
          int? coinId,
          String? type,
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
          String? imageUrl}) =>
      CoinsUsdDataData(
        id: id ?? this.id,
        coinId: coinId ?? this.coinId,
        type: type ?? this.type,
        market: market ?? this.market,
        fromSymbol: fromSymbol ?? this.fromSymbol,
        toSymbol: toSymbol ?? this.toSymbol,
        flags: flags ?? this.flags,
        price: price ?? this.price,
        lastUpdate: lastUpdate ?? this.lastUpdate,
        lastVolume: lastVolume ?? this.lastVolume,
        lastVolumeTo: lastVolumeTo ?? this.lastVolumeTo,
        lastTradeIn: lastTradeIn ?? this.lastTradeIn,
        lastMarket: lastMarket ?? this.lastMarket,
        openDay: openDay ?? this.openDay,
        highDay: highDay ?? this.highDay,
        lowDay: lowDay ?? this.lowDay,
        open24hour: open24hour ?? this.open24hour,
        high24hour: high24hour ?? this.high24hour,
        low24hour: low24hour ?? this.low24hour,
        topTierVolume24hour: topTierVolume24hour ?? this.topTierVolume24hour,
        topTierVolume24hourTo:
            topTierVolume24hourTo ?? this.topTierVolume24hourTo,
        imageUrl: imageUrl ?? this.imageUrl,
      );
  @override
  String toString() {
    return (StringBuffer('CoinsUsdDataData(')
          ..write('id: $id, ')
          ..write('coinId: $coinId, ')
          ..write('type: $type, ')
          ..write('market: $market, ')
          ..write('fromSymbol: $fromSymbol, ')
          ..write('toSymbol: $toSymbol, ')
          ..write('flags: $flags, ')
          ..write('price: $price, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('lastVolume: $lastVolume, ')
          ..write('lastVolumeTo: $lastVolumeTo, ')
          ..write('lastTradeIn: $lastTradeIn, ')
          ..write('lastMarket: $lastMarket, ')
          ..write('openDay: $openDay, ')
          ..write('highDay: $highDay, ')
          ..write('lowDay: $lowDay, ')
          ..write('open24hour: $open24hour, ')
          ..write('high24hour: $high24hour, ')
          ..write('low24hour: $low24hour, ')
          ..write('topTierVolume24hour: $topTierVolume24hour, ')
          ..write('topTierVolume24hourTo: $topTierVolume24hourTo, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        coinId,
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
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CoinsUsdDataData &&
          other.id == this.id &&
          other.coinId == this.coinId &&
          other.type == this.type &&
          other.market == this.market &&
          other.fromSymbol == this.fromSymbol &&
          other.toSymbol == this.toSymbol &&
          other.flags == this.flags &&
          other.price == this.price &&
          other.lastUpdate == this.lastUpdate &&
          other.lastVolume == this.lastVolume &&
          other.lastVolumeTo == this.lastVolumeTo &&
          other.lastTradeIn == this.lastTradeIn &&
          other.lastMarket == this.lastMarket &&
          other.openDay == this.openDay &&
          other.highDay == this.highDay &&
          other.lowDay == this.lowDay &&
          other.open24hour == this.open24hour &&
          other.high24hour == this.high24hour &&
          other.low24hour == this.low24hour &&
          other.topTierVolume24hour == this.topTierVolume24hour &&
          other.topTierVolume24hourTo == this.topTierVolume24hourTo &&
          other.imageUrl == this.imageUrl);
}

class CoinsUsdDataCompanion extends UpdateCompanion<CoinsUsdDataData> {
  final Value<int> id;
  final Value<int> coinId;
  final Value<String?> type;
  final Value<String?> market;
  final Value<String?> fromSymbol;
  final Value<String?> toSymbol;
  final Value<String?> flags;
  final Value<String?> price;
  final Value<String?> lastUpdate;
  final Value<String?> lastVolume;
  final Value<String?> lastVolumeTo;
  final Value<String?> lastTradeIn;
  final Value<String?> lastMarket;
  final Value<String?> openDay;
  final Value<String?> highDay;
  final Value<String?> lowDay;
  final Value<String?> open24hour;
  final Value<String?> high24hour;
  final Value<String?> low24hour;
  final Value<String?> topTierVolume24hour;
  final Value<String?> topTierVolume24hourTo;
  final Value<String?> imageUrl;
  const CoinsUsdDataCompanion({
    this.id = const Value.absent(),
    this.coinId = const Value.absent(),
    this.type = const Value.absent(),
    this.market = const Value.absent(),
    this.fromSymbol = const Value.absent(),
    this.toSymbol = const Value.absent(),
    this.flags = const Value.absent(),
    this.price = const Value.absent(),
    this.lastUpdate = const Value.absent(),
    this.lastVolume = const Value.absent(),
    this.lastVolumeTo = const Value.absent(),
    this.lastTradeIn = const Value.absent(),
    this.lastMarket = const Value.absent(),
    this.openDay = const Value.absent(),
    this.highDay = const Value.absent(),
    this.lowDay = const Value.absent(),
    this.open24hour = const Value.absent(),
    this.high24hour = const Value.absent(),
    this.low24hour = const Value.absent(),
    this.topTierVolume24hour = const Value.absent(),
    this.topTierVolume24hourTo = const Value.absent(),
    this.imageUrl = const Value.absent(),
  });
  CoinsUsdDataCompanion.insert({
    this.id = const Value.absent(),
    required int coinId,
    this.type = const Value.absent(),
    this.market = const Value.absent(),
    this.fromSymbol = const Value.absent(),
    this.toSymbol = const Value.absent(),
    this.flags = const Value.absent(),
    this.price = const Value.absent(),
    this.lastUpdate = const Value.absent(),
    this.lastVolume = const Value.absent(),
    this.lastVolumeTo = const Value.absent(),
    this.lastTradeIn = const Value.absent(),
    this.lastMarket = const Value.absent(),
    this.openDay = const Value.absent(),
    this.highDay = const Value.absent(),
    this.lowDay = const Value.absent(),
    this.open24hour = const Value.absent(),
    this.high24hour = const Value.absent(),
    this.low24hour = const Value.absent(),
    this.topTierVolume24hour = const Value.absent(),
    this.topTierVolume24hourTo = const Value.absent(),
    this.imageUrl = const Value.absent(),
  }) : coinId = Value(coinId);
  static Insertable<CoinsUsdDataData> custom({
    Expression<int>? id,
    Expression<int>? coinId,
    Expression<String?>? type,
    Expression<String?>? market,
    Expression<String?>? fromSymbol,
    Expression<String?>? toSymbol,
    Expression<String?>? flags,
    Expression<String?>? price,
    Expression<String?>? lastUpdate,
    Expression<String?>? lastVolume,
    Expression<String?>? lastVolumeTo,
    Expression<String?>? lastTradeIn,
    Expression<String?>? lastMarket,
    Expression<String?>? openDay,
    Expression<String?>? highDay,
    Expression<String?>? lowDay,
    Expression<String?>? open24hour,
    Expression<String?>? high24hour,
    Expression<String?>? low24hour,
    Expression<String?>? topTierVolume24hour,
    Expression<String?>? topTierVolume24hourTo,
    Expression<String?>? imageUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (coinId != null) 'coin_id': coinId,
      if (type != null) 'type': type,
      if (market != null) 'market': market,
      if (fromSymbol != null) 'from_symbol': fromSymbol,
      if (toSymbol != null) 'to_symbol': toSymbol,
      if (flags != null) 'flags': flags,
      if (price != null) 'price': price,
      if (lastUpdate != null) 'last_update': lastUpdate,
      if (lastVolume != null) 'last_volume': lastVolume,
      if (lastVolumeTo != null) 'last_volume_to': lastVolumeTo,
      if (lastTradeIn != null) 'last_trade_in': lastTradeIn,
      if (lastMarket != null) 'last_market': lastMarket,
      if (openDay != null) 'open_day': openDay,
      if (highDay != null) 'high_day': highDay,
      if (lowDay != null) 'low_day': lowDay,
      if (open24hour != null) 'open24hour': open24hour,
      if (high24hour != null) 'high24hour': high24hour,
      if (low24hour != null) 'low24hour': low24hour,
      if (topTierVolume24hour != null)
        'top_tier_volume24hour': topTierVolume24hour,
      if (topTierVolume24hourTo != null)
        'top_tier_volume24hour_to': topTierVolume24hourTo,
      if (imageUrl != null) 'image_url': imageUrl,
    });
  }

  CoinsUsdDataCompanion copyWith(
      {Value<int>? id,
      Value<int>? coinId,
      Value<String?>? type,
      Value<String?>? market,
      Value<String?>? fromSymbol,
      Value<String?>? toSymbol,
      Value<String?>? flags,
      Value<String?>? price,
      Value<String?>? lastUpdate,
      Value<String?>? lastVolume,
      Value<String?>? lastVolumeTo,
      Value<String?>? lastTradeIn,
      Value<String?>? lastMarket,
      Value<String?>? openDay,
      Value<String?>? highDay,
      Value<String?>? lowDay,
      Value<String?>? open24hour,
      Value<String?>? high24hour,
      Value<String?>? low24hour,
      Value<String?>? topTierVolume24hour,
      Value<String?>? topTierVolume24hourTo,
      Value<String?>? imageUrl}) {
    return CoinsUsdDataCompanion(
      id: id ?? this.id,
      coinId: coinId ?? this.coinId,
      type: type ?? this.type,
      market: market ?? this.market,
      fromSymbol: fromSymbol ?? this.fromSymbol,
      toSymbol: toSymbol ?? this.toSymbol,
      flags: flags ?? this.flags,
      price: price ?? this.price,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      lastVolume: lastVolume ?? this.lastVolume,
      lastVolumeTo: lastVolumeTo ?? this.lastVolumeTo,
      lastTradeIn: lastTradeIn ?? this.lastTradeIn,
      lastMarket: lastMarket ?? this.lastMarket,
      openDay: openDay ?? this.openDay,
      highDay: highDay ?? this.highDay,
      lowDay: lowDay ?? this.lowDay,
      open24hour: open24hour ?? this.open24hour,
      high24hour: high24hour ?? this.high24hour,
      low24hour: low24hour ?? this.low24hour,
      topTierVolume24hour: topTierVolume24hour ?? this.topTierVolume24hour,
      topTierVolume24hourTo:
          topTierVolume24hourTo ?? this.topTierVolume24hourTo,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (coinId.present) {
      map['coin_id'] = Variable<int>(coinId.value);
    }
    if (type.present) {
      map['type'] = Variable<String?>(type.value);
    }
    if (market.present) {
      map['market'] = Variable<String?>(market.value);
    }
    if (fromSymbol.present) {
      map['from_symbol'] = Variable<String?>(fromSymbol.value);
    }
    if (toSymbol.present) {
      map['to_symbol'] = Variable<String?>(toSymbol.value);
    }
    if (flags.present) {
      map['flags'] = Variable<String?>(flags.value);
    }
    if (price.present) {
      map['price'] = Variable<String?>(price.value);
    }
    if (lastUpdate.present) {
      map['last_update'] = Variable<String?>(lastUpdate.value);
    }
    if (lastVolume.present) {
      map['last_volume'] = Variable<String?>(lastVolume.value);
    }
    if (lastVolumeTo.present) {
      map['last_volume_to'] = Variable<String?>(lastVolumeTo.value);
    }
    if (lastTradeIn.present) {
      map['last_trade_in'] = Variable<String?>(lastTradeIn.value);
    }
    if (lastMarket.present) {
      map['last_market'] = Variable<String?>(lastMarket.value);
    }
    if (openDay.present) {
      map['open_day'] = Variable<String?>(openDay.value);
    }
    if (highDay.present) {
      map['high_day'] = Variable<String?>(highDay.value);
    }
    if (lowDay.present) {
      map['low_day'] = Variable<String?>(lowDay.value);
    }
    if (open24hour.present) {
      map['open24hour'] = Variable<String?>(open24hour.value);
    }
    if (high24hour.present) {
      map['high24hour'] = Variable<String?>(high24hour.value);
    }
    if (low24hour.present) {
      map['low24hour'] = Variable<String?>(low24hour.value);
    }
    if (topTierVolume24hour.present) {
      map['top_tier_volume24hour'] =
          Variable<String?>(topTierVolume24hour.value);
    }
    if (topTierVolume24hourTo.present) {
      map['top_tier_volume24hour_to'] =
          Variable<String?>(topTierVolume24hourTo.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String?>(imageUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CoinsUsdDataCompanion(')
          ..write('id: $id, ')
          ..write('coinId: $coinId, ')
          ..write('type: $type, ')
          ..write('market: $market, ')
          ..write('fromSymbol: $fromSymbol, ')
          ..write('toSymbol: $toSymbol, ')
          ..write('flags: $flags, ')
          ..write('price: $price, ')
          ..write('lastUpdate: $lastUpdate, ')
          ..write('lastVolume: $lastVolume, ')
          ..write('lastVolumeTo: $lastVolumeTo, ')
          ..write('lastTradeIn: $lastTradeIn, ')
          ..write('lastMarket: $lastMarket, ')
          ..write('openDay: $openDay, ')
          ..write('highDay: $highDay, ')
          ..write('lowDay: $lowDay, ')
          ..write('open24hour: $open24hour, ')
          ..write('high24hour: $high24hour, ')
          ..write('low24hour: $low24hour, ')
          ..write('topTierVolume24hour: $topTierVolume24hour, ')
          ..write('topTierVolume24hourTo: $topTierVolume24hourTo, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }
}

class $CoinsUsdDataTable extends CoinsUsdData
    with TableInfo<$CoinsUsdDataTable, CoinsUsdDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CoinsUsdDataTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _coinIdMeta = const VerificationMeta('coinId');
  @override
  late final GeneratedColumn<int?> coinId = GeneratedColumn<int?>(
      'coin_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _marketMeta = const VerificationMeta('market');
  @override
  late final GeneratedColumn<String?> market = GeneratedColumn<String?>(
      'market', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _fromSymbolMeta = const VerificationMeta('fromSymbol');
  @override
  late final GeneratedColumn<String?> fromSymbol = GeneratedColumn<String?>(
      'from_symbol', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _toSymbolMeta = const VerificationMeta('toSymbol');
  @override
  late final GeneratedColumn<String?> toSymbol = GeneratedColumn<String?>(
      'to_symbol', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _flagsMeta = const VerificationMeta('flags');
  @override
  late final GeneratedColumn<String?> flags = GeneratedColumn<String?>(
      'flags', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<String?> price = GeneratedColumn<String?>(
      'price', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _lastUpdateMeta = const VerificationMeta('lastUpdate');
  @override
  late final GeneratedColumn<String?> lastUpdate = GeneratedColumn<String?>(
      'last_update', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _lastVolumeMeta = const VerificationMeta('lastVolume');
  @override
  late final GeneratedColumn<String?> lastVolume = GeneratedColumn<String?>(
      'last_volume', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _lastVolumeToMeta =
      const VerificationMeta('lastVolumeTo');
  @override
  late final GeneratedColumn<String?> lastVolumeTo = GeneratedColumn<String?>(
      'last_volume_to', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _lastTradeInMeta =
      const VerificationMeta('lastTradeIn');
  @override
  late final GeneratedColumn<String?> lastTradeIn = GeneratedColumn<String?>(
      'last_trade_in', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _lastMarketMeta = const VerificationMeta('lastMarket');
  @override
  late final GeneratedColumn<String?> lastMarket = GeneratedColumn<String?>(
      'last_market', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _openDayMeta = const VerificationMeta('openDay');
  @override
  late final GeneratedColumn<String?> openDay = GeneratedColumn<String?>(
      'open_day', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _highDayMeta = const VerificationMeta('highDay');
  @override
  late final GeneratedColumn<String?> highDay = GeneratedColumn<String?>(
      'high_day', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _lowDayMeta = const VerificationMeta('lowDay');
  @override
  late final GeneratedColumn<String?> lowDay = GeneratedColumn<String?>(
      'low_day', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _open24hourMeta = const VerificationMeta('open24hour');
  @override
  late final GeneratedColumn<String?> open24hour = GeneratedColumn<String?>(
      'open24hour', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _high24hourMeta = const VerificationMeta('high24hour');
  @override
  late final GeneratedColumn<String?> high24hour = GeneratedColumn<String?>(
      'high24hour', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _low24hourMeta = const VerificationMeta('low24hour');
  @override
  late final GeneratedColumn<String?> low24hour = GeneratedColumn<String?>(
      'low24hour', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _topTierVolume24hourMeta =
      const VerificationMeta('topTierVolume24hour');
  @override
  late final GeneratedColumn<String?> topTierVolume24hour =
      GeneratedColumn<String?>('top_tier_volume24hour', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 50),
          type: const StringType(),
          requiredDuringInsert: false);
  final VerificationMeta _topTierVolume24hourToMeta =
      const VerificationMeta('topTierVolume24hourTo');
  @override
  late final GeneratedColumn<String?> topTierVolume24hourTo =
      GeneratedColumn<String?>('top_tier_volume24hour_to', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(
              minTextLength: 0, maxTextLength: 50),
          type: const StringType(),
          requiredDuringInsert: false);
  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String?> imageUrl = GeneratedColumn<String?>(
      'image_url', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 70),
      type: const StringType(),
      requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        coinId,
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
  String get aliasedName => _alias ?? 'coins_usd_data';
  @override
  String get actualTableName => 'coins_usd_data';
  @override
  VerificationContext validateIntegrity(Insertable<CoinsUsdDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('coin_id')) {
      context.handle(_coinIdMeta,
          coinId.isAcceptableOrUnknown(data['coin_id']!, _coinIdMeta));
    } else if (isInserting) {
      context.missing(_coinIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('market')) {
      context.handle(_marketMeta,
          market.isAcceptableOrUnknown(data['market']!, _marketMeta));
    }
    if (data.containsKey('from_symbol')) {
      context.handle(
          _fromSymbolMeta,
          fromSymbol.isAcceptableOrUnknown(
              data['from_symbol']!, _fromSymbolMeta));
    }
    if (data.containsKey('to_symbol')) {
      context.handle(_toSymbolMeta,
          toSymbol.isAcceptableOrUnknown(data['to_symbol']!, _toSymbolMeta));
    }
    if (data.containsKey('flags')) {
      context.handle(
          _flagsMeta, flags.isAcceptableOrUnknown(data['flags']!, _flagsMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('last_update')) {
      context.handle(
          _lastUpdateMeta,
          lastUpdate.isAcceptableOrUnknown(
              data['last_update']!, _lastUpdateMeta));
    }
    if (data.containsKey('last_volume')) {
      context.handle(
          _lastVolumeMeta,
          lastVolume.isAcceptableOrUnknown(
              data['last_volume']!, _lastVolumeMeta));
    }
    if (data.containsKey('last_volume_to')) {
      context.handle(
          _lastVolumeToMeta,
          lastVolumeTo.isAcceptableOrUnknown(
              data['last_volume_to']!, _lastVolumeToMeta));
    }
    if (data.containsKey('last_trade_in')) {
      context.handle(
          _lastTradeInMeta,
          lastTradeIn.isAcceptableOrUnknown(
              data['last_trade_in']!, _lastTradeInMeta));
    }
    if (data.containsKey('last_market')) {
      context.handle(
          _lastMarketMeta,
          lastMarket.isAcceptableOrUnknown(
              data['last_market']!, _lastMarketMeta));
    }
    if (data.containsKey('open_day')) {
      context.handle(_openDayMeta,
          openDay.isAcceptableOrUnknown(data['open_day']!, _openDayMeta));
    }
    if (data.containsKey('high_day')) {
      context.handle(_highDayMeta,
          highDay.isAcceptableOrUnknown(data['high_day']!, _highDayMeta));
    }
    if (data.containsKey('low_day')) {
      context.handle(_lowDayMeta,
          lowDay.isAcceptableOrUnknown(data['low_day']!, _lowDayMeta));
    }
    if (data.containsKey('open24hour')) {
      context.handle(
          _open24hourMeta,
          open24hour.isAcceptableOrUnknown(
              data['open24hour']!, _open24hourMeta));
    }
    if (data.containsKey('high24hour')) {
      context.handle(
          _high24hourMeta,
          high24hour.isAcceptableOrUnknown(
              data['high24hour']!, _high24hourMeta));
    }
    if (data.containsKey('low24hour')) {
      context.handle(_low24hourMeta,
          low24hour.isAcceptableOrUnknown(data['low24hour']!, _low24hourMeta));
    }
    if (data.containsKey('top_tier_volume24hour')) {
      context.handle(
          _topTierVolume24hourMeta,
          topTierVolume24hour.isAcceptableOrUnknown(
              data['top_tier_volume24hour']!, _topTierVolume24hourMeta));
    }
    if (data.containsKey('top_tier_volume24hour_to')) {
      context.handle(
          _topTierVolume24hourToMeta,
          topTierVolume24hourTo.isAcceptableOrUnknown(
              data['top_tier_volume24hour_to']!, _topTierVolume24hourToMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CoinsUsdDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CoinsUsdDataData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CoinsUsdDataTable createAlias(String alias) {
    return $CoinsUsdDataTable(attachedDatabase, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CoinsTable coins = $CoinsTable(this);
  late final $CoinsUsdDataTable coinsUsdData = $CoinsUsdDataTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [coins, coinsUsdData];
}
