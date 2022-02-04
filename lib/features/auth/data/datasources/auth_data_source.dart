import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthDataSource {
  Future<UserCredential> signIn(String email, String password);

  Future<UserCredential> signUp(String email, String password);
}

class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth auth;

  AuthDataSourceImpl({required this.auth});

  @override
  Future<UserCredential> signIn(String email, String password) async {
    return await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<UserCredential> signUp(String email, String password) async {
    return await auth.createUserWithEmailAndPassword(email: email, password: password);
  }
}