import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';
import 'package:flutter/material.dart';

const String ROOT_SCREEN = "/";
const String SIGN_IN_SCREEN = "/SignInScreen";
const String SIGN_UP_SCREEN = "/SignUpScreen";
const String COIN_LIST_SCREEN = "/CoinListScreen";
const String COIN_DETAILS_SCREEN = "/CoinDetailsScreen";

class NavigationManager {
  static void goBack(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  static void navigateToSignInScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, SIGN_IN_SCREEN, (Route<dynamic> route) => false);
  }

  static void navigateToSignUpScreen(BuildContext context) {
    Navigator.pushNamed(context, SIGN_UP_SCREEN);
  }

  static void navigateToCoinListScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, COIN_LIST_SCREEN, (Route<dynamic> route) => false);
  }

  static void navigateToCoinDetailsScreen(BuildContext context, Data? data) {
    Navigator.pushNamed(context, COIN_DETAILS_SCREEN, arguments: data);
  }
}
