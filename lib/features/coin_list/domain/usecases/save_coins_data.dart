import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';
import 'package:clean_architecture_app/features/coin_list/domain/repositories/coins_repository.dart';
import 'package:equatable/equatable.dart';

class SaveCoinsData implements UseCase<dynamic, CoinsParams> {
  final CoinsRepository repository;

  SaveCoinsData(this.repository);

  @override
  Future<dynamic> call(CoinsParams params) async =>
      await repository.saveCoinsData(params.coinsResponse);
}

class CoinsParams extends Equatable {
  final CoinsResponse coinsResponse;

  CoinsParams({required this.coinsResponse});

  @override
  List<Object> get props => [coinsResponse];
}
