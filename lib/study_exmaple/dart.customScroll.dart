import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/demo.png',
                fit: BoxFit.cover,
              ),
              title: Text(
                '这是标题',
                // style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
            sliver: SliverGrid(
                delegate:
                    SliverChildBuilderDelegate((BuildContext ctx, int index) {
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)),
                  );
                }, childCount: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3)),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext ctx, int index) {
              return ListTile(
                leading: Icon(Icons.people),
                title: Text('联系人 $index'),
              );
            }, childCount: 20),
          )
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
      // appBar: AppBar(
      //   title: Text('商品列表'),
      // ),
      body: MyText(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
