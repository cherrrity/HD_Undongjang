import 'package:flutter/material.dart';
import 'package:hd_undongjang/routing_app/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Undongjang Demo',
      theme: new ThemeData(
        primaryColor: Colors.white,
        primaryTextTheme: TextTheme(
            headline6:
                TextStyle(color: Color(0xff00ca9d))),
      ),
      //home: LoadingPage(),u
      routes: routes,
    );
  }
}
