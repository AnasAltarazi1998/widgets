import 'package:flutter/material.dart';

class SheetButtom extends StatefulWidget {
  const SheetButtom({Key? key}) : super(key: key);

  @override
  _SheetButtomState createState() => _SheetButtomState();
}

class _SheetButtomState extends State<SheetButtom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Builder(builder: (context) {
        return FloatingActionButton(onPressed: () {
          showBottomSheet(
              context: context,
              builder: (context) {
                return Wrap(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'show',
                              style: TextStyle(fontSize: 20),
                            )),
                      ],
                    )
                  ],
                );
              });
        });
      })),
    );
  }
}
