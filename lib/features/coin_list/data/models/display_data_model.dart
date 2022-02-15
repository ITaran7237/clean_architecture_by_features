import 'package:clean_architecture_app/features/coin_list/domain/entities/crypto_display_data.dart';
import 'package:json_annotation/json_annotation.dart' as j;
import 'coins_usd_model.dart';

@j.JsonSerializable()
class DisplayDataModel extends CryptoDisplayData {
  const DisplayDataModel({CoinsUSDModel? usd}) : super(usd: usd);

  factory DisplayDataModel.fromJson(Map<String, dynamic>? json) {
    return DisplayDataModel(
        usd: json != null ?
        CoinsUSDModel.fromJson(json['USD']) :
        null);
  }

  Map<String, dynamic> toJson() {
    return {'USD': usd};
  }
}
