import 'package:flutter/material.dart';
import 'features/random_images/presentation/pages/random_image_page.dart';
import 'locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Image Collection',
        theme: ThemeData(
          primaryColor: Colors.red.shade800,
        ),
        home: RandomImagePage());
  }
}
