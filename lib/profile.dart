import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController usernameController = TextEditingController();

  int length = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('final example'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            child: TextField(
              controller: usernameController,
              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'username',
                alignLabelWithHint: true,
                labelText: 'username',
                counterText: '$length',
              ),
              onChanged: (str) {
                setState(() {
                  length = str.length;
                });
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Get.snackbar(
                    'value', usernameController.text ?? 'nothing to show ...');
              },
              child: Text('show value'))
        ],
      ),
    );
  }
}
