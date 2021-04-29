import 'package:flutter/material.dart';
import 'package:widgets/home.dart';
import 'package:widgets/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {'/home': (_) => Home(), '/profile': (_) => Profile()},
      darkTheme: ThemeData(
        primaryColor: Colors.indigo.shade300,
      ),
      theme:
          ThemeData(primaryColor: Colors.indigo, primarySwatch: Colors.indigo),
    );
  }
}
