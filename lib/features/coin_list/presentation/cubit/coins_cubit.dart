import 'dart:async';
import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';
import 'package:clean_architecture_app/features/coin_list/domain/usecases/get_coin_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'coins_state.dart';

class CoinsCubit extends Cubit<CoinsState> {
  final GetCoinList _getCoinList;

  CoinsCubit({
    required GetCoinList getCoinList,
  })  : _getCoinList = getCoinList,
        super(CoinsInitialState()) {
    getCoinsData();
  }

  Future getCoinsData() async {
    try {
      emit(LoadingState());
      var coins = await _getCoinList(NoParams());
      emit(OnOnGotCoinsDataState(coins));
    } catch (ex) {
      emit(ErrorState(message: ex.toString()));
    }
  }
}
