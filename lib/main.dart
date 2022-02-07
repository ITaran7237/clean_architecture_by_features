import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'features/coin_list/data/models/coins_response.dart';
import 'utils/url_strategy/nonweb_url_strategy.dart'
    if (dart.library.html) 'utils/url_strategy/web_url_strategy.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'locator.dart' as di;
import 'utils/navigation/router.dart';

void main() async {
  await configureApp();
  await di.init();
  runApp(HomeWidget());
}

Future configureApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  _initAdapters();
  await Firebase.initializeApp();
  configureUrl();
}

_initAdapters() {
  Hive.registerAdapter<CoinsResponse>(CoinsResponseAdapter());
  Hive.registerAdapter<Data>(DataAdapter());
  Hive.registerAdapter<CoinInfo>(CoinInfoAdapter());
  Hive.registerAdapter<Rating>(RatingAdapter());
  Hive.registerAdapter<Weiss>(WeissAdapter());
  Hive.registerAdapter<Display>(DisplayAdapter());
  Hive.registerAdapter<USD>(USDAdapter());
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: SigiRouter.generatedRoute,
      theme: ThemeData(
          primaryColor: Colors.red.shade800, accentColor: Colors.red.shade600),
    );
  }
}
