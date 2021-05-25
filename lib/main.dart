

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(title: Text('Item 2'))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("FMm"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: Alignment.bottomLeft,
            children: [
              Expanded(
                child: Image.asset('assets/space_1.jpg'),
                flex: 3,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(20),
                  // margin: EdgeInsets.all(20),
                  color: Colors.grey,
                  child: Text(
                    'hello',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(20),
                  // margin: EdgeInsets.all(20),
                  color: Colors.red,
                  child: Text(
                    'Fazle',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(20),
                  // margin: EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Text(
                    'good',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('click 1');
          },
          child: Text('click'),
          backgroundColor: Colors.blue),
    );
  }
}
