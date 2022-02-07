import 'package:clean_architecture_app/utils/navigation/navigation_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'auth/data/datasources/auth_local_data_source.dart';

class RootScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RootScreenState();
}

class RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    checkIfAuthenticated().then((success) {
      if (success) {
        NavigationManager.navigateToCoinListScreen(context);
      } else {
        NavigationManager.navigateToSignInScreen(context);
      }
    });
    return Scaffold(body: Center(child: CircularProgressIndicator()));
  }

  checkIfAuthenticated() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 1));
    return sharedPreferences.getString(CACHED_FIREBASE_TOKEN)?.isNotEmpty ??
        false;
  }
}
