import 'package:flutter/material.dart';

import 'package:undongjang/pages/login.dart';
import 'package:undongjang/pages/lesson.dart';
import 'package:undongjang/pages/lesson_list.dart';
import 'package:undongjang/logics/BlueAcess.dart';
import 'package:undongjang/pages/good_posture.dart';
import 'package:undongjang/pages/bad_posture.dart';
import 'package:undongjang/pages/choose_course.dart';
import 'package:undongjang/pages/choose_exercise.dart';
import 'package:undongjang/pages/exercise.dart';

final routes = {
  '/': (BuildContext context) => LoginPage(),
  '/lesson': (BuildContext context) => LessonPage(),
  '/lesson_list': (BuildContext context) => LessonListPage(),
  '/blue': (BuildContext context) => FlutterBlueApp(),
  '/good_posture': (BuildContext context) => GoodPosturePage(),
  '/bad_posture': (BuildContext context) => BadPosturePage(),
  '/choose_course': (BuildContext context) => ChooseCoursePage(),
  '/choose_exercise': (BuildContext context) => ChooseExercisePage(),
  '/exercise': (BuildContext context) => ExercisePage(),
};
