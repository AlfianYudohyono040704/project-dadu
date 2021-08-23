import 'package:flutter/material.dart';
import 'statefull.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',

      // A widget which will be started on application startup
      home: DiceApp(),
    );
  }
}
