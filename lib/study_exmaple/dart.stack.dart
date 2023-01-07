import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Image.asset('assets/images/demo.png'),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('这是一段文字'),
                  // GestureDetector(
                  //   child: Icon(Icons.favorite),
                  //   onTap: () {
                  //     print('dianji');
                  //   },
                  // )
                  IconButton(
                      onPressed: () {
                        print('icon button');
                      },
                      icon: Icon(Icons.favorite))
                ],
              ),
            )),
      ],
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
