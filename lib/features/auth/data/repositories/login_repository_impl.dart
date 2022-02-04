import 'package:clean_architecture_app/features/auth/data/datasources/auth_data_source.dart';
import 'package:clean_architecture_app/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:clean_architecture_app/features/auth/domain/repositories/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepositoryImpl implements LoginRepository {
  final AuthDataSource authDataSource;
  final AuthLocalDataSource authLocalDataSource;

  LoginRepositoryImpl({required this.authDataSource, required this.authLocalDataSource});

  @override
  Future<UserCredential> login(String email, String password) async {
    var userCredential = await authDataSource.signIn(email, password);
    var user = userCredential.user;
    var token = await user?.getIdToken();
    await authLocalDataSource.cacheFirebaseToken(token ?? '');
    return userCredential;
  }

  @override
  Future<UserCredential> signUp(String email, String password) async {
    return await authDataSource.signUp(email, password);
  }
}