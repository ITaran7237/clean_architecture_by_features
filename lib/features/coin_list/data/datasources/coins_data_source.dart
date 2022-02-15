import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../../core/database/coins_database.dart';
import '../models/crypto_coins_model.dart';

abstract class CoinsDataSource {
  Future<CryptoCoinsModel> getCoinsData();
}

class CoinsDataSourceImpl implements CoinsDataSource {
  final http.Client client;
  final Database database;

  CoinsDataSourceImpl({required this.client, required this.database});

  @override
  Future<CryptoCoinsModel> getCoinsData() async {
    var response = await client.get(Uri.parse(
        'https://min-api.cryptocompare.com/data/top/totalvolfull?limit=30&tsym=USD'));
    return CryptoCoinsModel.fromJson(jsonDecode(response.body));
  }
}