import 'package:flutter/material.dart';
import 'package:widgets/pages.dart';

class Home extends StatefulWidget {
  Home({Key key, this.index = 0}) : super(key: key);
  int index = 0;
  Widget body;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body[widget.index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            setState(() {
              widget.index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'Favorites',
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: 'Music',
              icon: Icon(Icons.music_note),
            ),
            BottomNavigationBarItem(
              label: 'Places',
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              label: 'News',
              icon: Icon(Icons.library_books),
            ),
          ],
        ));
  }
}
