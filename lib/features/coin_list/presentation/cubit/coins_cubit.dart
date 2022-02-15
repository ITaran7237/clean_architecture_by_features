import 'dart:async';
import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/coin_list/domain/usecases/get_coin_list.dart';
import 'package:clean_architecture_app/features/coin_list/domain/usecases/save_coins_data.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/crypto_coins.dart';
part 'coins_state.dart';

class CoinsCubit extends Cubit<CoinsState> {
  final GetCoinList _getCoinList;
  final SaveCoinsData _saveCoinsData;

  CoinsCubit({
    required GetCoinList getCoinList,
    required SaveCoinsData saveCoinsData,
  })  : _getCoinList = getCoinList,
        _saveCoinsData = saveCoinsData,
        super(CoinsInitialState()) {
    getCoinsData();
  }

  Future getCoinsData() async {
    try {
      print('>>> CoinsCubit.getCoinsData :');
      emit(LoadingState());
      CryptoCoins coins = await _getCoinList(NoParams());
      await _saveCoinsData(CoinsParams(cryptoCoins: coins));
      emit(OnOnGotCoinsDataState(coins));
    } catch (ex) {
      emit(ErrorState(message: ex.toString()));
    }
  }
}
