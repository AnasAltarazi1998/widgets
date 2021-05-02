import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (ctxt) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              showBottomSheet(
                  context: ctxt,
                  builder: (ctxt) => Scaffold(
                        appBar: AppBar(),
                        body: Center(
                          child: Text('data'),
                        ),
                      ));
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
