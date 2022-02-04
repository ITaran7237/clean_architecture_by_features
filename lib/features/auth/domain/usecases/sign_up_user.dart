import 'package:clean_architecture_app/core/usecases/usecase.dart';
import 'package:clean_architecture_app/features/auth/domain/repositories/login_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpUser implements UseCase<UserCredential, SignUpParams> {
  final LoginRepository repository;

  SignUpUser(this.repository);

  @override
  Future<UserCredential> call(SignUpParams params) async =>
      await repository.signUp(params.email, params.password);
}

class SignUpParams extends Equatable {
  final String email;
  final String password;

  SignUpParams({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
