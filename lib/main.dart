import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/first.dart';
import 'package:widgets/home.dart';
import 'package:widgets/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (_) => First(),
        '/second': (_) => Second(),
      },
      home: Home(),
    );
  }
}
