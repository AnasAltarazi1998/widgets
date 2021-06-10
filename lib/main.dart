import 'package:flutter/material.dart';
import 'package:widgets/home.dart';
import 'package:widgets/listhorisental.dart';
import 'package:widgets/sheetbottum.dart';

main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (_) => Home(),
        '/mylist': (_) => MyList(),
        '/sheetbuttom': (_) => SheetButtom(),
      },
    );
  }
}
