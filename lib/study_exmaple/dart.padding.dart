import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(bottom: 6),
        child: Text(
          '这是一段文字',
          style: TextStyle(fontSize: 30, backgroundColor: Colors.red),
        ),
      ),
      Text(
        '这是一段文字',
        style: TextStyle(fontSize: 30, backgroundColor: Colors.red),
      ),
      Text(
        '这是一段文字',
        style: TextStyle(fontSize: 30, backgroundColor: Colors.red),
      ),
    ]);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage1(),
    );
  }
}

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: MyText(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
