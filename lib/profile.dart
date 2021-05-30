import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('data'),
      ),
      body: Center(
        child: Image.asset(
          'assets/img.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}