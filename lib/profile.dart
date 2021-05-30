import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text('text'),
          onPressed: () {
            Get.snackbar('title', 'message');
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text('account name'),
              accountEmail: Text('account email'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/user.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.g_translate_sharp),
              title: Text('translate'),
            ),
            ListTile(
              leading: Icon(Icons.g_translate_sharp),
              title: Text('translate'),
            ),
            ListTile(
              leading: Icon(Icons.g_translate_sharp),
              title: Text('translate'),
            ),
            ListTile(
              leading: Icon(Icons.g_translate_sharp),
              title: Text('translate'),
            ),
          ],
        ),
      ),
    );
  }
}
