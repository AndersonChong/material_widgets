import 'package:flutter/material.dart';
import 'navigation/basic_navigation.dart';
import 'navigation/send_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // BASIC_NAVIGATION.DART

      // // home: BasicNavigation1(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => BasicNavigation1(),
      //   '/2': (context) => BasicNavigation2(),
      // },

      // SEND_DATA.DART

      home: ListPage(),
    );
  }
}
