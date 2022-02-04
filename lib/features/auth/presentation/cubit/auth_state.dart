part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitialState extends AuthState {}

class LoadingState extends AuthState {}

class OnSuccessLoginState extends AuthState {}

class ErrorState extends AuthState {
  final String message;

  ErrorState({required this.message});

  @override
  List<Object> get props => [message];
}

class OnSuccessRegistrationState extends AuthState {}

class ErrorRegistrationState extends AuthState {
  final String message;

  ErrorRegistrationState({required this.message});

  @override
  List<Object> get props => [message];
}
