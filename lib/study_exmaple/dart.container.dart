import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(20),
      height: 200,
      alignment: Alignment(0, 0),
      // transform: Matrix4.rotationY(0.9),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(width: 2, color: Colors.blue),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.orange,
                offset: Offset(10, 10),
                blurRadius: 2.3,
                spreadRadius: 3)
          ]),
      child: Text('一段描述'),
    );
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
