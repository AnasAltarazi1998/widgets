import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushReplacementNamed('/first'),
        child: Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 4,
          child: Image.asset(
            'assets/img.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
