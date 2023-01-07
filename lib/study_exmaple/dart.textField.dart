import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyText extends StatelessWidget {
  final userNameEditController = TextEditingController();
  final passwordEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: ThemeData(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: Color.fromRGBO(100, 50, 90, 0.8))),
      child: Column(
        children: [
          TextField(
            controller: userNameEditController,
            decoration: InputDecoration(
              labelText: '这是个输入框',
              icon: Icon(Icons.people),
              hintText: '请输入',
              filled: true,
              fillColor: Colors.red[50],
            ),
            onChanged: (value) {
              print('change $value');
            },
            onSubmitted: (val) {
              print('submit $val');
            },
          ),
          TextField(
            controller: passwordEditController,
            decoration: InputDecoration(
              labelText: '这是个输入框',
              icon: Icon(Icons.password),
              hintText: '请输入密码',
              filled: true,
              fillColor: Colors.red[50],
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(100, 40)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 22))),
              onPressed: () {
                final username = userNameEditController.text;
                final password = passwordEditController.text;
                print('提交结果问 $username $password');
              },
              child: Text('登录'))
        ],
      ),
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
