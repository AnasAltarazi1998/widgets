import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).popAndPushNamed('/profile');
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Page title',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
          ),
        ),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            'text',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
