import 'package:equatable/equatable.dart';

class CryptoCoinDetails extends Equatable {
  final String? id;
  final String? name;
  final String? fullName;
  final String? internal;
  final String? imageUrl;
  final String? url;
  final String? algorithm;
  final String? proofType;
  final String? assetLaunchDate;
  final String? documentType;

  const CryptoCoinDetails(
      {this.id,
      this.name,
      this.fullName,
      this.internal,
      this.imageUrl,
      this.url,
      this.algorithm,
      this.proofType,
      this.assetLaunchDate,
      this.documentType});

  @override
  List<Object?> get props => [
        id,
        name,
        fullName,
        internal,
        imageUrl,
        url,
        algorithm,
        proofType,
        assetLaunchDate,
        documentType
      ];

  @override
  bool get stringify => true;
}
