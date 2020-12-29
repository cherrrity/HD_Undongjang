import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
          children: <Widget>[
            Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('BLE Connection'),
                    onPressed: (){
                    Navigator.pushNamed(context, '/ble_list');
                    }
                  ),
                  RaisedButton(
                    child: Text('to first page'),
                    onPressed: (){
                    Navigator.pop(context);
                    }
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ],
        ),
    );
  }
}