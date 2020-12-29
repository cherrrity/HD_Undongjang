import 'dart:async';
import 'dart:io';
import 'package:flutter_ble_lib/flutter_ble_lib.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:flutter/material.dart';

class ExercisePage extends StatefulWidget {
  //ExercisePage({Key key, this.title}) : super(key: key);
  //final String title;
  final BleManager bm;

  ExercisePage({Key key, this.bm}) : super(key: key);

  @override
  _ExercisePageState createState() => _ExercisePageState(bm);
}

class _ExercisePageState extends State<ExercisePage> {
  BleManager bleManager;

  _ExercisePageState(BleManager bm){
    bleManager = bm;
  }

  @override
  void initState() {
    _getData().then((value){
      print('Async done');
    });
    super.initState();
  }

  //페이지 구성
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container( //컨테이너로 감싼다.
        decoration: BoxDecoration( //decoration 을 준다.
            image: DecorationImage(
                image: AssetImage("images/9.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent, //스캐폴드에 백그라운드를 투명하게 한다.
        ),
      ),
    );
  }

  _getData() async{

    Peripheral peripheral = bleManager.createUnsafePeripheral("00002220-0000-1000-8000-00805f9b34fb");

    //받는 캐리터리스틱 모니터링 ON 함수, 보통 Notification Enable 정도로 생각하면될 것 같다.
    Stream<CharacteristicWithValue> characteristicUpdates = peripheral.monitorCharacteristic(
        "00002221-0000-1000-8000-00805f9b34fb",
        "00002223-0000-1000-8000-00805f9B34fb");

    //데이터 받는 리스너 핸들 변수
    StreamSubscription monitoringStreamSubscription;

    //이미 리스너가 있다면 취소
    await monitoringStreamSubscription?.cancel(); // ?. = 해당객체가 null이면 무시하고 넘어감.
    monitoringStreamSubscription = characteristicUpdates.listen( (value) {
      print("read data : ${value.value}");  //데이터 출력
    },
      onError: (error) {
        print("Error while monitoring characteristic \n$error"); //실패시
      },
      cancelOnError: true, //에러 발생시 자동으로 listen 취소
    );
  }
}



