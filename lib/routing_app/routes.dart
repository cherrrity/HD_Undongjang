import 'package:flutter/material.dart';

import 'package:hd_undongjang/routing_app/pages/intro_slider.dart';
import 'package:hd_undongjang/routing_app/pages/login.dart';
import 'package:hd_undongjang/routing_app/pages/main.dart';
import 'package:hd_undongjang/routing_app/pages/second.dart';
import 'package:hd_undongjang/routing_app/pages/ble_info.dart';

final routes = {
  '/': (BuildContext context) => IntroSliderPage(),
  '/login': (BuildContext context) => LoginPage(),
  '/main': (BuildContext context) => MainPage(),
  '/second': (BuildContext context) => SecondPage(),
  '/ble_list': (BuildContext context) => BLEInfoPage(),
};
