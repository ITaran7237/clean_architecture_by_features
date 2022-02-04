import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'base_state.dart';

abstract class BaseCubit<State> extends Cubit<State> {

  @protected
  final _loadingController = StreamController<BaseState>.broadcast();
  final _errorController = StreamController<BaseState>.broadcast();
  BaseState? _currentState;

  Stream<BaseState> get loadingControllerStream => _loadingController.stream;

  Stream<BaseState> get errorControllerStream => _errorController.stream;

  BaseState? get currentState => _currentState;

  BaseCubit(State initialState) : super(initialState);

  void blocInit() {}

  @override
  Future close() async {
    _loadingController.close();
    _errorController.close();
    super.close();
  }

  void showLoading() {
    if (!_loadingController.isClosed) {
      _currentState = ShowLoadingState();
      _loadingController.add(ShowLoadingState());
    }
  }

  void hideLoading() {
    if (!_loadingController.isClosed) {
      _currentState = HideLoadingState();
      _loadingController.add(HideLoadingState());
    }
  }

  void showErrorDialog(String message) {
    if (!_errorController.isClosed)
      _errorController.add(ShowErrorDialogState(message));
  }

  void hideErrorDialog() {
    if (!_errorController.isClosed)
      _errorController.add(HideErrorDialogState());
  }
}
