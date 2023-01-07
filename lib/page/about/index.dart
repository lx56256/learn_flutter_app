import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(title: Text('关于')),
        body: Center(
            child: Container(
                child: Column(
          children: [
            Text('about'),
            Text(message),
          ],
        ))));
  }
}
