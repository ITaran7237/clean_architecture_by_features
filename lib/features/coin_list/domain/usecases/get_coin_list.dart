import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';
import 'package:clean_architecture_app/features/coin_list/domain/repositories/coins_repository.dart';
import 'package:http/http.dart';

class GetCoinList implements UseCase<CoinsResponse, NoParams> {
  final CoinsRepository repository;

  GetCoinList(this.repository);

  @override
  Future<CoinsResponse> call(NoParams params) async => await repository.getCoinList();
}
