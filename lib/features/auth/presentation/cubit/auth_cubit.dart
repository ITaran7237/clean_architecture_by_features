import 'dart:async';
import 'package:clean_architecture_app/features/auth/domain/usecases/sign_in_user.dart';
import 'package:clean_architecture_app/features/auth/domain/usecases/sign_up_user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final SignInUser _signInUser;
  final SignUpUser _signUpUser;

  AuthCubit({
    required SignInUser signInUser,
    required SignUpUser signUpUser,
  })  : _signInUser = signInUser,
        _signUpUser = signUpUser,
        super(AuthInitialState());

  Future login(String email, String password) async {
    try {
      emit(LoadingState());
      await _signInUser(SignInParams(email: email, password: password));
      emit(OnSuccessLoginState());
    } catch (ex) {
      emit(ErrorState(message: ex.toString()));
    }
  }

  Future signUp(String email, String password) async {
    try {
      emit(LoadingState());
      await _signUpUser(SignUpParams(email: email, password: password));
      emit(OnSuccessRegistrationState());
    } catch (ex) {
      emit(ErrorRegistrationState(message: ex.toString()));
    }
  }

  setInitState() {
    emit(AuthInitialState());
  }
}
