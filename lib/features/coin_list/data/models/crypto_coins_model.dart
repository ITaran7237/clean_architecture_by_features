import '../../domain/entities/crypto_coins.dart';
import 'coins_data_model.dart';
import 'package:json_annotation/json_annotation.dart' as j;

@j.JsonSerializable()
class CryptoCoinsModel extends CryptoCoins {
  const CryptoCoinsModel({List<CoinsDataModel>? data}) : super(data: data);

  factory CryptoCoinsModel.fromJson(Map<String, dynamic> json) {
    return CryptoCoinsModel(
        data: json['Data']
            .map<CoinsDataModel>((v) => CoinsDataModel.fromJson(v))
            .toList());
  }

  Map<String, dynamic> toJson() {
    return {'Data': data};
  }
}
