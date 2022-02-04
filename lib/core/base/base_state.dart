import 'package:flutter/foundation.dart';

@immutable
abstract class BaseState {}

class InitialBaseState extends BaseState {}

class ShowLoadingState extends BaseState {}

class HideLoadingState extends BaseState {}

class ShowErrorDialogState extends BaseState {
  final String _message;

  String get message => _message;

  ShowErrorDialogState(this._message);
}

class HideErrorDialogState extends BaseState {}
