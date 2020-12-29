import 'package:flutter/material.dart';
import 'package:flutter_ble_lib/flutter_ble_lib.dart';
import 'package:hd_undongjang/routing_app/pages/choose_course.dart';
import 'package:hd_undongjang/routing_app/pages/choose_exercise.dart';
import 'package:hd_undongjang/routing_app/routes.dart';

import 'package:hd_undongjang/routing_app/pages/intro_slider.dart';
import 'package:hd_undongjang/routing_app/pages/login.dart';
import 'package:hd_undongjang/routing_app/pages/main.dart';
import 'package:hd_undongjang/routing_app/pages/second.dart';
import 'package:hd_undongjang/routing_app/pages/ble_info.dart';
import 'package:hd_undongjang/routing_app/pages/exercising.dart';
import 'package:hd_undongjang/routing_app/pages/good_posture.dart';
import 'package:hd_undongjang/routing_app/pages/bad_posture.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final BleManager bleManager = BleManager();

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
      //home: LoadingPage(),
      routes:{
        '/': (BuildContext context) => IntroSliderPage(),
        '/login': (BuildContext context) => LoginPage(),
        '/main': (BuildContext context) => MainPage(),
        '/second': (BuildContext context) => SecondPage(),
        '/ble_list': (BuildContext context) => BLEInfoPage(bm: bleManager),
        '/choose_exercise': (BuildContext context) => ChooseExercisePage(),
        '/choose_course': (BuildContext context) => ChooseCoursePage(),
        '/exercising': (BuildContext context) => ExercisePage(bm: bleManager),
        '/good_posture': (BuildContext context) => GoodPosturePage(),
        '/bad_posture': (BuildContext context) => BadPosturePage()
      }
    );
  }
}
