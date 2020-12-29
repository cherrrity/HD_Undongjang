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
                          color: Colors.black,
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Emliy Daniel',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff343434),
                              fontSize: 20),
                        ),
                        SizedBox(height: 1),
                        Text(
                          'STUDENTS',
                          style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
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
              return GridView.builder(
                padding: EdgeInsets.all(5.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 12.0,
                ),
                itemCount: 12,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, int index) {
                  return Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    child: 
                    Center(
                      child: RaisedButton(
                        child: Text('BLE Connection'),
                        onPressed: (){
                        Navigator.pushNamed(context, '/ble_test');
                        }
                      )
                    ),
                  );
                },
              );
            }).toList(),
          )),
    );
  }
}
