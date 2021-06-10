import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets/home.dart';
import 'package:widgets/profile.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:
          ThemeData(primaryColor: Colors.indigo, primarySwatch: Colors.indigo),
      initialRoute: '/home',
      routes: {'/home': (_) => Home(), '/profile': (_) => Profile()},
    );
  }
}
