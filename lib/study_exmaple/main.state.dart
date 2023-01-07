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
      body: BodyContent(),
    );
  }
}

class BodyContent extends StatefulWidget {
  BodyContent() {
    print('1,构造函数');
  }
  @override
  State<StatefulWidget> createState() {
    print('2,createState');
    // TODO: implement createState
    return BodyContentState();
  }
}

class BodyContentState extends State<BodyContent> {
  int count = 0;

  BodyContentState() {
    print('3,调用BodyContentState 构造方法');
  }

  @override
  void initState() {
    print('4, initState');
    // TODO: implement initState
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BodyContent oldWidget) {
    print('didupdate');
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('依赖更新');
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('5,调用builder');
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_getButtons(), Text('计数为: $count'), MyText()],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text('增加+'),
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
        ),
        ElevatedButton(
          child: Text('减少-'),
          onPressed: () {
            setState(() {
              count -= 1;
            });
          },
        ),
        FloatingActionButton(onPressed: () {})
      ],
    );
  }
}

class MyText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyTextState();
  }
}

class MyTextState extends State<MyText> {
  @override
  void didUpdateWidget(covariant MyText oldWidget) {
    print('didupdate Text');
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('这是子widget');
  }
}
