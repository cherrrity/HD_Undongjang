import 'package:flutter/material.dart';

class GoodPosturePage extends StatefulWidget {
  GoodPosturePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _GoodPosturePageState createState() => _GoodPosturePageState();
}

class _GoodPosturePageState extends State<GoodPosturePage> {


  //페이지 구성
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container( //컨테이너로 감싼다.
        decoration: BoxDecoration( //decoration 을 준다.
            image: DecorationImage(
                image: AssetImage("images/10.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent, //스캐폴드에 백그라운드를 투명하게 한다.
        ),
      ),
    );
  }
}

