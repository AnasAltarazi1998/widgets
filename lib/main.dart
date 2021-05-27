import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: _buildShrineTheme(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (ctxt) => Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 112.0),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 80.0),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: ctxt,
                        builder: (ctxt2) => Scaffold(
                              appBar: AppBar(
                                title: Text('data'),
                              ),
                              body: Center(
                                child: Text('card number $index'),
                              ),
                            ));
                  },
                  child: Card(
                    shadowColor: Colors.brown,
                    borderOnForeground: true,
                    color: Colors.grey.shade400,
                    elevation: 10,
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        SizedBox(
                            height: 250,
                            child: Image.asset(
                              'assets/img.jpg',
                              width: double.infinity,
                              fit: BoxFit.fill,
                            )),
                        ListTile(
                          leading: Icon(Icons.arrow_drop_down_circle),
                          title: const Text('Card title 1'),
                          subtitle: Text(
                            'Secondary Text',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                // Perform some action
                              },
                              child: const Text('ACTION 1'),
                            ),
                            TextButton(
                              onPressed: () {
                                // Perform some action
                              },
                              child: const Text('ACTION 2'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 150,
            child: SafeArea(
              child: MaterialBanner(
                content: const Text('Error message text'),
                leading: CircleAvatar(child: Icon(Icons.delete)),
                actions: [
                  TextButton(
                    child: const Text('ACTION 1'),
                    onPressed: () {
                      showDialog(
                        context: ctxt,
                        builder: (ctxt1) => AlertDialog(
                          title: Text('Reset settings?'),
                          content: Text(
                              'This will reset your device to its default factory settings.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(ctxt1);
                              },
                              child: Text('CANCEL'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('ACCEPT'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  TextButton(
                    child: const Text('ACTION 2'),
                    onPressed: () {
                      Future<String> value = showDialog(
                        context: ctxt,
                        builder: (ctxt1) => SimpleDialog(
                          title: Text('Set backup account'),
                          children: [
                            SimpleDialogItem(
                              icon: Icons.account_circle,
                              color: Colors.orange,
                              text: 'user01@gmail.com',
                              onPressed: () {
                                Navigator.pop(ctxt1, 'user01@gmail.com');
                              },
                            ),
                            SimpleDialogItem(
                              icon: Icons.account_circle,
                              color: Colors.green,
                              text: 'user02@gmail.com',
                              onPressed: () {
                                Navigator.pop(ctxt1, 'user02@gmail.com');
                              },
                            ),
                            SimpleDialogItem(
                              icon: Icons.add_circle,
                              color: Colors.grey,
                              text: 'Add account',
                              onPressed: () {
                                Navigator.pop(context, 'user02@gmail.com');
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem(
      {Key key, this.icon, this.color, this.text, this.onPressed})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    toggleableActiveColor: shrinePink400,
    accentColor: shrineBrown900,
    primaryColor: shrinePink100,
    primaryColorLight: shrinePink100,
    buttonColor: shrinePink100,
    scaffoldBackgroundColor: shrineBackgroundWhite,
    cardColor: shrineBackgroundWhite,
    textSelectionColor: shrinePink100,
    errorColor: shrineErrorRed,
    buttonTheme: ButtonThemeData(
      colorScheme: _shrineColorScheme.copyWith(primary: shrinePink400),
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: shrineBrown900);
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: shrineBrown900,
        bodyColor: shrineBrown900,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink100,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
