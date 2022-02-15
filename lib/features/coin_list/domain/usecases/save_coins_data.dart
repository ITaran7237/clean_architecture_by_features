import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/coin_list/domain/repositories/coins_repository.dart';
import 'package:equatable/equatable.dart';

import '../entities/crypto_coins.dart';

class SaveCoinsData implements UseCase<dynamic, CoinsParams> {
  final CoinsRepository repository;

  SaveCoinsData(this.repository);

  @override
  Future<dynamic> call(CoinsParams params) async =>
      await repository.saveCoinsData(params.cryptoCoins);
}

class CoinsParams extends Equatable {
  final CryptoCoins cryptoCoins;

  CoinsParams({required this.cryptoCoins});

  @override
  List<Object> get props => [cryptoCoins];
}
