import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(HomeState());

class HomeState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyApp();
  }
}

class MyApp extends State<HomeState> {
  ScrollController _controller = ScrollController(initialScrollOffset: 300);
  bool _isShowButton = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      // print('监听滚动，${_controller.offset}');
      setState(() {
        _isShowButton = _controller.offset > 1200;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('商品列表', style: TextStyle(color: Colors.red)),
        ),
        body: NotificationListener(
          onNotification: (ScrollNotification notification) {
            if (notification is ScrollStartNotification) {
              print('开始滚动， ${notification.metrics.pixels}');
            } else if (notification is ScrollUpdateNotification) {
              print(
                  '正在滚动 ${notification.metrics.pixels}, ${notification.metrics.maxScrollExtent}');
            } else if (notification is ScrollEndNotification) {
              print('结束滚动 ${notification.metrics.pixels}');
            }
            return true;
          },
          child: ListView.builder(
              controller: _controller,
              itemCount: 30,
              itemBuilder: (BuildContext ctx, int index) {
                return ListTile(
                  title: Text('hello world_$index'),
                  leading: Icon(Icons.people),
                  trailing: Icon(Icons.deck),
                );
              }),
        ),
        floatingActionButton: _isShowButton
            ? FloatingActionButton(
                onPressed: () {
                  _controller.animateTo(0,
                      duration: Duration(seconds: 1), curve: Curves.easeIn);
                },
                child: Icon(Icons.arrow_upward),
              )
            : null,
      ),
    );
  }
}
