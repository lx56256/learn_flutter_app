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

class BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        ProductItem('产品1', '描述1111111',
            'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F033021091503%2F210330091503-6-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1674111643&t=ffe7083dcbe296be50b3b5b0246b31f0'),
        SizedBox(height: 6),
        ProductItem('产品2', '描述22222222',
            'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F033021091503%2F210330091503-6-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1674111643&t=ffe7083dcbe296be50b3b5b0246b31f0'),
        SizedBox(height: 6),
        ProductItem('产品3', '描述3333333',
            'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F033021091503%2F210330091503-6-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1674111643&t=ffe7083dcbe296be50b3b5b0246b31f0'),
        SizedBox(height: 6),
        ProductItem('产品3', '描述3333333',
            'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Flmg.jj20.com%2Fup%2Fallimg%2F1114%2F033021091503%2F210330091503-6-1200.jpg&refer=http%3A%2F%2Flmg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1674111643&t=ffe7083dcbe296be50b3b5b0246b31f0'),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;

  ProductItem(this.title, this.desc, this.imageUrl);

  final style1 = TextStyle(color: Colors.orange, fontSize: 26);
  final style2 = TextStyle(color: Colors.pink, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
        width: 5,
        color: Colors.purple,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: style1),
          SizedBox(height: 8),
          Text(desc, style: style2),
          SizedBox(height: 8),
          Image.network(imageUrl),
        ],
      ),
    );
  }
}
