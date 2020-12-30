import 'package:flutter/material.dart';

class GoodPosturePage extends StatefulWidget {
  GoodPosturePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChooseCourseState createState() => _ChooseCourseState();
}

class _ChooseCourseState extends State<GoodPosturePage> {
  //페이지 구성
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/bad_posture');
      },
      child: Container(
        //컨테이너로 감싼다.
        decoration: BoxDecoration(
            //decoration 을 준다.
            image: DecorationImage(
                image: AssetImage("assets/images/10.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent, //스캐폴드에 백그라운드를 투명하게 한다.
        ),
      ),
    );
  }
}
