import 'package:clean_architecture_app/core/database/coins.dart';
import 'package:drift/drift.dart';
import 'coins.dart';
export 'database/shared.dart';

part 'coins_database.g.dart';

@DriftDatabase(tables: [Coins, CoinsUsdData])
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  Future<List<Coin>> getAllCoins() => select(coins).get();

  Future<List<CoinsUsdDataData>> getAllCoinsDetails() => select(coinsUsdData).get();

  Future insertCoin(CoinsCompanion coinsCompanion) => into(coins).insert(coinsCompanion);

  Future insertCoinsOnConflictUpdate(CoinsCompanion coinsCompanion) => into(coins).insertOnConflictUpdate(coinsCompanion);

  Future insertCoinsDataOnConflictUpdate(CoinsUsdDataCompanion dataCompanion) => into(coinsUsdData).insertOnConflictUpdate(dataCompanion);

  Future insertCoinsData(CoinsUsdDataCompanion dataCompanion) => into(coinsUsdData).insert(dataCompanion);

  Future updateCoin(CoinsCompanion coinsCompanion) => update(coins).replace(coinsCompanion);

  Future updateCoinsData(CoinsUsdDataCompanion dataCompanion) => update(coinsUsdData).replace(dataCompanion);

  Future deleteCoins() => delete(coins).go();
}
