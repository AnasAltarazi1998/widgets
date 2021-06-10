import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, int) {
        return Container(
          height: 200,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/person.jpg'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Container(
                  child: Text(
                      'kjhgbhjblkjhhjghgfhllhblkkkmmm,llljhgb ,,,l,k,dsfflkm'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
