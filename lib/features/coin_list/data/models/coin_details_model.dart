import '../../domain/entities/crypto_coins_details.dart';
import 'package:json_annotation/json_annotation.dart' as j;

@j.JsonSerializable()
class CoinDetailsModel extends CryptoCoinDetails {
  const CoinDetailsModel(
      {String? id,
      String? name,
      String? fullName,
      String? internal,
      String? imageUrl,
      String? url,
      String? algorithm,
      String? proofType,
      String? assetLaunchDate,
      String? documentType})
      : super(
            id: id,
            name: name,
            fullName: fullName,
            internal: internal,
            imageUrl: imageUrl,
            url: url,
            algorithm: algorithm,
            proofType: proofType,
            assetLaunchDate: assetLaunchDate,
            documentType: documentType);

  factory CoinDetailsModel.fromJson(Map<String, dynamic> json) {
    return CoinDetailsModel(
        id: json['Id'],
        name: json['Name'],
        fullName: json['FullName'],
        internal: json['Internal'],
        imageUrl: json['ImageUrl'],
        url: json['Url'],
        algorithm: json['Algorithm'],
        proofType: json['ProofType'],
        assetLaunchDate: json['AssetLaunchDate'],
        documentType: json['DocumentType']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'Name': name,
      'FullName': fullName,
      'Internal': internal,
      'ImageUrl': imageUrl,
      'Url': url,
      'Algorithm': algorithm,
      'ProofType': proofType,
      'AssetLaunchDate': assetLaunchDate,
      'DocumentType': documentType
    };
  }
}
