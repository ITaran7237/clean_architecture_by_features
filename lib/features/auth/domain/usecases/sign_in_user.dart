import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/auth/domain/repositories/login_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInUser implements UseCase<UserCredential, SignInParams> {
  final LoginRepository repository;

  SignInUser(this.repository);

  @override
  Future<UserCredential> call(SignInParams params) async =>
      await repository.login(params.email, params.password);
}

class SignInParams extends Equatable {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
