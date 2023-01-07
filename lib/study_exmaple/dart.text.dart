import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Text.rich(TextSpan(children: [
        TextSpan(text: 'hello world1', style: TextStyle(color: Colors.red)),
        WidgetSpan(
            child: Icon(
          Icons.favorite,
          size: 16,
          color: Colors.red,
        )),
        TextSpan(text: 'hello world2', style: TextStyle(color: Colors.green)),
        TextSpan(text: 'hello world3', style: TextStyle(color: Colors.blue))
      ])),
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
    );
  }
}
