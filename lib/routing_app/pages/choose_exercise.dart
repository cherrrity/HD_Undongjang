import 'package:flutter/material.dart';

class ChooseExercisePage extends StatefulWidget {
  ChooseExercisePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChooseExercisePageState createState() => _ChooseExercisePageState();
}

class _ChooseExercisePageState extends State<ChooseExercisePage> {

  //페이지 구성
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container( //컨테이너로 감싼다.
        decoration: BoxDecoration( //decoration 을 준다.
            image: DecorationImage(image: AssetImage("images/8.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent, //스캐폴드에 백그라운드를 투명하게 한다.
          body: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ble_list');
                },
              ),
            ),
          ),
        );
  }
}

