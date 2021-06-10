import 'package:flutter/material.dart';
import 'package:widgets/listhorisental.dart';
import 'package:widgets/sheetbottum.dart';
import 'package:widgets/verticallist.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'articales',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
        ),
        body: Container(
          width: size.width,
          child: Column(
            children: [
              Expanded(flex: 1, child: MyList()),
              Expanded(
                flex: 4,
                child: VerticalList(),
              ),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (ctxt) => FloatingActionButton(
              child: Icon(Icons.drag_handle_sharp),
              onPressed: () {
                showBottomSheet(
                    context: ctxt,
                    builder: (bnctxt) => Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.all(16),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: double.infinity,
                                    child: Text('refresh'),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.red)),
                                  onPressed: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: double.infinity,
                                    child: Text('logout'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ));
              }),
        ),
      ),
    );
  }
}
