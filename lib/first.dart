import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushReplacementNamed('/second'),
        child: Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: Center(
        child: Image.asset(
          'assets/img.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
