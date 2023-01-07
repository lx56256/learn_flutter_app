import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add),
              Text(''),
            ],
          ),
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(20, 30)),
              backgroundColor: MaterialStateProperty.all(Colors.red),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))),
        ),
        OutlinedButton(
            onPressed: () {},
            child: Text('outline button'),
            style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                side: BorderSide(color: Colors.red, width: 2))),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        // Image(
        //   width: 200,
        //   height: 200,
        //   // color: Colors.blue,
        //   // colorBlendMode: BlendMode.colorDodge,
        //   repeat: ImageRepeat.repeat,
        //   fit: BoxFit.scaleDown,
        //   alignment: Alignment(0, 0),
        //   image: NetworkImage(
        //       'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F040221103339%2F210402103339-8-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1674616973&t=5760eeaed689de97043f2262ad4f2204'),
        // ),
        // Image(image: AssetImage('assets/images/demo.png')),
        FadeInImage(
            fadeInDuration: Duration(milliseconds: 1),
            fadeOutDuration: Duration(milliseconds: 1),
            placeholder: AssetImage('assets/images/demo.png'),
            image: NetworkImage(
                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F040221103339%2F210402103339-8-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1674616973&t=5760eeaed689de97043f2262ad4f2204'))
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
