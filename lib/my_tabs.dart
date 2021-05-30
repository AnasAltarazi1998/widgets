import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Fixed Tabs'),
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff5808e5),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'DOGS', icon: Icon(Icons.favorite)),
              Tab(text: 'CATS', icon: Icon(Icons.music_note)),
              Tab(text: 'BIRDS', icon: Icon(Icons.search)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('DOGS')),
            Center(child: Text('CATS')),
            Center(child: Text('BIRDS')),
          ],
        ),
      ),
    );
  }
}
