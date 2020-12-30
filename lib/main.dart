import 'package:flutter/material.dart';
import 'package:undongjang/routes.dart';

import 'package:undongjang/logics/BlueAcess.dart';
import 'package:undongjang/pages/widget/FlutterWiget.dart';
import 'package:flutter_blue/flutter_blue.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Undongjang Demo',
      theme: new ThemeData(
        primaryColor: Colors.white,
        primaryTextTheme:
            TextTheme(headline6: TextStyle(color: Color(0xff00ca9d))),
      ),
    
      routes: routes,
    );
  }
}

