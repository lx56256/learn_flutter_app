import 'package:flutter/material.dart';
import './body_content.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页')),
      body: BodyContent(),
    );
  }
}
