import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final choices = ['FOR U', 'SEARCH', 'COLLECT', 'ROUTINE'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: choices.map((String choice) {
              return Tab(text: choice);
            }).toList(),
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: choices.map((String choice) {
              return Center(
                  child: RaisedButton(
                    child: Text(choice + 'BLE Connection'),
                    onPressed: (){
                      Navigator.pushNamed(context, '/ble_list');
                    }
                  )
              );
          }).toList(),
        ) 
      ),
    );
  }
}
