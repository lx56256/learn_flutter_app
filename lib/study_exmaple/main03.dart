import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      body: BodyContent('束带结发'),
    );
  }
}

class BodyContent extends StatelessWidget {
  final String message;
  BodyContent(this.message) {
    print('构造函数调用');
  }
  @override
  Widget build(BuildContext context) {
    print('build调用');
    // TODO: implement build
    return Text(message);
  }
}
