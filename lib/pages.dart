import 'package:flutter/cupertino.dart';
import 'package:widgets/my_tabs.dart';
import 'package:widgets/profile.dart';

final body = [
  Profile(),
  Tabs(),
  Center(
    child: Text('third page'),
  ),
  Center(
    child: Text('fourth page'),
  ),
];
