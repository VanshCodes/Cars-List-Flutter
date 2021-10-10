import 'package:bui/configs/app.dart';
import 'package:bui/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var appConfig = AppConfig();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appConfig.title,
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.pink[600],
          textTheme: TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.black,
            displayColor: Colors.blue,
          )),
      home: HomeScreen(),
    );
  }
}
