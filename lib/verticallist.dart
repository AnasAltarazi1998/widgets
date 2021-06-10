import 'package:flutter/material.dart';

class VerticalList extends StatefulWidget {
  const VerticalList({Key? key}) : super(key: key);

  @override
  _VerticalListState createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, int) {
        return Card(
          shadowColor: Colors.grey,
          elevation: 5,
          margin: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image(image: AssetImage('assets/person2.jpg')),
                ),
                ListTile(
                  title: Text(
                    'title',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'data',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    width: 275,
                    child: Text(
                      'fghkhjlkj;lkjlkkkkkkkkkkkkkllklllllllllllllddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
