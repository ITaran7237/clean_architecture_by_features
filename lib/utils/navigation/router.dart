import 'package:clean_architecture_app/features/auth/presentation/pages/sign_in_page.dart';
import 'package:clean_architecture_app/features/auth/presentation/pages/sign_up_page.dart';
import 'package:clean_architecture_app/features/coin_list/presentation/pages/coin_details_page.dart';
import 'package:clean_architecture_app/features/coin_list/presentation/pages/coin_list_page.dart';
import 'package:clean_architecture_app/features/root.dart';
import 'package:flutter/material.dart';
import '../../features/coin_list/domain/entities/crypto_coins_data.dart';
import 'navigation_manager.dart';
import 'transparent_route.dart';

class SigiRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROOT_SCREEN:
        return TransparentRoute(
            settings: RouteSettings(name: ROOT_SCREEN),
            builder: (BuildContext context) {
              return RootScreen();
            });

      case COIN_LIST_SCREEN:
        return TransparentRoute(
            settings: RouteSettings(name: COIN_LIST_SCREEN),
            builder: (BuildContext context) {
              return CoinListPage();
            });

      case COIN_DETAILS_SCREEN:
        return TransparentRoute(
            settings: RouteSettings(name: COIN_DETAILS_SCREEN),
            builder: (BuildContext context) {
              return CoinDetailsPage(settings.arguments as CryptoCoinsData?);
            });

      case SIGN_IN_SCREEN:
        return TransparentRoute(
            settings: RouteSettings(name: SIGN_IN_SCREEN),
            builder: (BuildContext context) {
              return SignInPage();
            });

      case SIGN_UP_SCREEN:
        return TransparentRoute(
            settings: RouteSettings(name: SIGN_UP_SCREEN),
            builder: (BuildContext context) {
              return SignUpPage();
            });

      default:
        return TransparentRoute(
          settings: RouteSettings(name: ROOT_SCREEN),
          builder: (BuildContext context) {
            return RootScreen();
          },
        );
    }
  }
}
