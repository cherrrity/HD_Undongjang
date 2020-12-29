import 'package:flutter/material.dart';

class BadPosturePage extends StatefulWidget {
  BadPosturePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BadPosturePageState createState() => _BadPosturePageState();
}

class _BadPosturePageState extends State<BadPosturePage> {


  //페이지 구성
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container( //컨테이너로 감싼다.
        decoration: BoxDecoration( //decoration 을 준다.
            image: DecorationImage(
                image: AssetImage("images/11.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent, //스캐폴드에 백그라운드를 투명하게 한다.
        ),
      ),
    );
  }
}

