import 'package:flutter/material.dart';
import './content.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('个人中心')),
      body: BodyContent(),
    );
  }
}
