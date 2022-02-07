import 'dart:async';
import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';
import 'package:clean_architecture_app/features/coin_list/domain/usecases/get_coin_list.dart';
import 'package:clean_architecture_app/features/coin_list/domain/usecases/save_coins_data.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

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
      emit(LoadingState());
      var coins = await _getCoinList(NoParams());
      print('>>> CoinsCubit.getCoinsData :1');
      // _initAdapters();
      print('>>> CoinsCubit.getCoinsData :2');
      await _saveCoinsData(CoinsParams(coinsResponse: coins));
      print('>>> CoinsCubit.getCoinsData :3');
      emit(OnOnGotCoinsDataState(coins));
    } catch (ex) {
      emit(ErrorState(message: ex.toString()));
    }
  }

  _initAdapters() {
    Hive.registerAdapter<CoinsResponse>(CoinsResponseAdapter());
    Hive.registerAdapter<Data>(DataAdapter());
    Hive.registerAdapter<CoinInfo>(CoinInfoAdapter());
    Hive.registerAdapter<Rating>(RatingAdapter());
    Hive.registerAdapter<Weiss>(WeissAdapter());
    Hive.registerAdapter<Display>(DisplayAdapter());
    Hive.registerAdapter<USD>(USDAdapter());
  }
}
