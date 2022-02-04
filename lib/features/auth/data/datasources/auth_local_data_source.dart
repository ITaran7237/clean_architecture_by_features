import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future cacheFirebaseToken(String token);
}

const CACHED_FIREBASE_TOKEN = 'CACHED_FIREBASE_TOKEN';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future cacheFirebaseToken(String token) async {
    return await sharedPreferences.setString(CACHED_FIREBASE_TOKEN, token);
  }
}
