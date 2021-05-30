import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> checked = [true, true, false, false, true];
  int _value = 1;

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var i = 0; i < 5; i += 1)
                Row(
                  children: [
                    Checkbox(
                      onChanged: i == 4
                          ? null
                          : (bool value) {
                              setState(() {
                                checked[i] = value;
                              });
                            },
                      tristate: i == 2,
                      value: checked[i],
                      activeColor: Color(0xFF6200EE),
                    ),
                    Text(
                      'Checkbox ${i + 1}',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: i == 4 ? Colors.black38 : Colors.black),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              for (int i = 1; i <= 5; i++)
                ListTile(
                  title: Text(
                    'Radio $i',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: i == 5 ? Colors.black38 : Colors.black),
                  ),
                  leading: Radio(
                    value: i,
                    groupValue: _value,
                    activeColor: Color(0xFF6200EE),
                    onChanged: i == 5
                        ? null
                        : (int value) {
                            setState(() {
                              _value = value;
                            });
                          },
                  ),
                ),
              InputChip(
                avatar: Icon(Icons.remove),
                label: Text('Input 1'),
                onSelected: (bool value) {},
              ),
              ChoiceChip(
                label: Text('Choice 1'),
                onSelected: (bool value) {},
                selected: true,
              ),
              ChoiceChip(
                label: Text('Choice 2'),
                onSelected: (bool value) {},
                selected: false,
              ),
              FilterChip(
                label: Text('Filter 1'),
                selected: true,
                onSelected: (bool value) {},
              ),
              FilterChip(
                label: Text('Filter 2'),
                onSelected: (bool value) {},
              ),
              ActionChip(
                avatar: Icon(Icons.favorite),
                label: Text('Action 1'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
