import 'package:flutter/material.dart';
import 'package:widgets/card.dart';
import 'package:widgets/data.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('final example'),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, i) {
                return MyCard(
                  content: data[i]['content'],
                  img: data[i]['img'],
                  subtitle: data[i]['subtitle'],
                  title: data[i]['title'],
                  comments: data[i]['comments'],
                );
              })),
    );
  }
}
