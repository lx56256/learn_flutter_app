import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/about/index.dart';
import 'package:flutter_app/page/details/index.dart';

class MallPage extends StatefulWidget {
  const MallPage({Key? key}) : super(key: key);

  @override
  State<MallPage> createState() => _MallPageState();
}

class _MallPageState extends State<MallPage> {
  String _mallMessage = 'default';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('集市')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_mallMessage),
              Text(
                '这是引用Theme',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Card(
                child: Text(
                  'hello card',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Switch(
                  value: false,
                  onChanged: (value) {
                    print('$value');
                  }),
              OutlinedButton(
                onPressed: () {},
                child: Text('rich'),
              ),
              CupertinoSwitch(
                value: true,
                onChanged: (val) {
                  print('$val');
                },
                activeColor: Colors.pink,
              ),
              ElevatedButton(
                  onPressed: () => _jumpToDetails(context),
                  child: Text('点击跳转')),
              ElevatedButton(
                  onPressed: () => _jumpToAbout(context),
                  child: Text('点击跳转about')),
              ElevatedButton(
                  onPressed: () => _jumpToDetails2(context),
                  child: Text('点击跳转2'))
            ],
          ),
        ));
  }

  void _jumpToDetails(BuildContext context) {
    Future result =
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return DetailPage('mall message');
    }));

    result.then((value) {
      setState(() {
        _mallMessage = value;
      });
    });
  }

  void _jumpToAbout(BuildContext context) {
    Navigator.of(context).pushNamed(AboutPage.routeName, arguments: '1121212');
  }

  void _jumpToDetails2(BuildContext context) {
    Future result = Navigator.of(context)
        .pushNamed(DetailPage.routeName, arguments: 'detail2');

    result.then((value) {
      setState(() {
        _mallMessage = value;
      });
    });
  }
}
