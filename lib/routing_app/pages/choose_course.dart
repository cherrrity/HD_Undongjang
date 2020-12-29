import 'package:flutter/material.dart';

class ChooseCoursePage extends StatefulWidget {
  ChooseCoursePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChooseCoursePageState createState() => _ChooseCoursePageState();
}

class _ChooseCoursePageState extends State<ChooseCoursePage> {

  //페이지 구성
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container( //컨테이너로 감싼다.
        decoration: BoxDecoration( //decoration 을 준다.
            image: DecorationImage(image: AssetImage("images/7.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent, //스캐폴드에 백그라운드를 투명하게 한다.
          body: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/choose_exercise');
            },
          ),
        ),
      ),
    );
  }
}