part of 'coins_cubit.dart';

abstract class CoinsState extends Equatable {
  List<Object?> get props => [];
}

class CoinsInitialState extends CoinsState {}

class LoadingState extends CoinsState {}

class OnOnGotCoinsDataState extends CoinsState {
  final CryptoCoins coinsData;

  OnOnGotCoinsDataState(this.coinsData);
}

class ErrorState extends CoinsState {
  final String message;

  ErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
