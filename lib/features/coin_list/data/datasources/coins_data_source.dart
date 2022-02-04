import 'dart:convert';

import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';
import 'package:http/http.dart' as http;

abstract class CoinsDataSource {
  Future<CoinsResponse> getCoinsData();
}

class CoinsDataSourceImpl implements CoinsDataSource {
  final http.Client client;

  CoinsDataSourceImpl({required this.client});

  @override
  Future<CoinsResponse> getCoinsData() async {
    var response = await client.get(Uri.parse('https://min-api.cryptocompare.com/data/top/totalvolfull?limit=50&tsym=USD'));
    return CoinsResponse.fromJson(jsonDecode(response.body));
  }
}