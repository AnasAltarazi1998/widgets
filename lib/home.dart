import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/first');
              },
              child: Text('first screen'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
              child: Text('second screen'),
            ),
          ],
        ),
      ),
    );
  }
}
