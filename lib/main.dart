import 'package:eticon_api/eticon_api.dart';
import 'package:flutter/material.dart';

import 'screens/main_screen/main_screen_provider.dart';

void main() {
  Api.init(baseUrl: 'https://api.nasa.gov/mars-photos/api/v1/');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreenProvider(),
    );
  }
}
