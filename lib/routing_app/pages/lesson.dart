import 'package:flutter/material.dart';


class LessonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("CLASS"),
          centerTitle: true,
        ),
        //body: Image(),
        bottomSheet: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/ble_test');
          },
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text(
              "START",
              style: TextStyle(
                  color: Color(0xff00cad9), fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }
}
