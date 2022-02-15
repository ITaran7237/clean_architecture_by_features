import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'utils/url_strategy/nonweb_url_strategy.dart'
    if (dart.library.html) 'utils/url_strategy/web_url_strategy.dart';
import 'locator.dart' as di;
import 'utils/navigation/router.dart';

void main() async {
  await configureApp();
  await di.init();
  runApp(HomeWidget());
}

Future configureApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureUrl();
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
