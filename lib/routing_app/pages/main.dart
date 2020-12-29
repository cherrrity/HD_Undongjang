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
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          size: 120.0,
                          color: Colors.white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Account Name',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Email Address',
                          style:
                              TextStyle(color: Colors.grey[300], fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            bottom: PreferredSize(

              preferredSize: Size.square(250),
              child: TabBar(
                tabs: choices.map((String choice) {
                  return Tab(text: choice);
                }).toList(),
                isScrollable: true,
              ),
            ),
          ),
          body: TabBarView(
            children: choices.map((String choice) {
              return Center(
                  child: RaisedButton(
                      child: Text(choice + 'BLE Connection'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/ble_list');
                      }));
            }).toList(),
          )),
    );
  }
}
