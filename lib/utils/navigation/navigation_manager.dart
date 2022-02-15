import 'package:flutter/material.dart';
import '../../features/coin_list/domain/entities/crypto_coins_data.dart';

const String ROOT_SCREEN = "/";
const String SIGN_IN_SCREEN = "/sign-in";
const String SIGN_UP_SCREEN = "/sign-up";
const String COIN_LIST_SCREEN = "/coin-list";
const String COIN_DETAILS_SCREEN = "/coin-details";

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

  static void navigateToCoinDetailsScreen(BuildContext context, CryptoCoinsData? data) {
    Navigator.pushNamed(context, COIN_DETAILS_SCREEN, arguments: data);
  }
}
