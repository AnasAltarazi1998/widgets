import 'package:flutter/material.dart';
import 'package:widgets/home.dart';
import 'package:widgets/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {'/home': (_) => Home()},
      darkTheme: ThemeData(
        primaryColor: Colors.indigo.shade300,
      ),
      theme: ThemeData(
          primaryColor: Colors.indigo,
          primarySwatch: Colors.indigo,
          bottomAppBarColor: Colors.indigo,
          iconTheme: IconThemeData(color: Colors.white),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.black)),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Standard Bottom Sheet Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: Theme.of(context).colorScheme.copyWith(
//               primary: Color(0xFF6200EE),
//             ),
//       ),
//       home: Scaffold(
//         // Use a Builder to get a context within the Scaffold.
//         body: Builder(
//           builder: (ctxt) {
//             return Center(
//               child: TextButton(
//                 child: Text('SHOW BOTTOM SHEET'),
//                 onPressed: () {
//                   showBottomSheet(
//                     context: ctxt,
//                     builder: (context) {
//                       final theme = Theme.of(context);
//                       // Using Wrap makes the bottom sheet height the height of the content.
//                       // Otherwise, the height will be half the height of the screen.
//                       return Scaffold(
//                         appBar: AppBar(),
//                         body: Wrap(
//                           children: [
//                             ListTile(
//                               leading: Icon(
//                                 Icons.home,
//                                 color: Colors.white,
//                               ),
//                               title: Text(
//                                 'Header',
//                                 style: theme.textTheme.subtitle1.copyWith(
//                                     color: theme.colorScheme.onPrimary),
//                               ),
//                               tileColor: theme.colorScheme.primary,
//                             ),
//                             ListTile(
//                               title: Text('Title 1'),
//                             ),
//                             ListTile(
//                               title: Text('Title 2'),
//                             ),
//                             ListTile(
//                               title: Text('Title 3'),
//                             ),
//                             ListTile(
//                               title: Text('Title 4'),
//                             ),
//                             ListTile(
//                               title: Text('Title 5'),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
