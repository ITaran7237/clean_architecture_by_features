import '../../domain/entities/crypto_coins_data.dart';
import 'coin_details_model.dart';
import 'display_data_model.dart';
import 'package:json_annotation/json_annotation.dart' as j;

@j.JsonSerializable()
class CoinsDataModel extends CryptoCoinsData {
  const CoinsDataModel({CoinDetailsModel? coinInfo, DisplayDataModel? display})
      : super(coinInfo: coinInfo, display: display);

  factory CoinsDataModel.fromJson(Map<String, dynamic>? json) {
    return CoinsDataModel(
        coinInfo:
            json != null ? CoinDetailsModel.fromJson(json['CoinInfo']) : null,
        display:
            json != null ? DisplayDataModel.fromJson(json['DISPLAY']) : null);
  }

  Map<String, dynamic> toJson() {
    return {'CoinInfo': coinInfo, 'DISPLAY': display};
  }
}
