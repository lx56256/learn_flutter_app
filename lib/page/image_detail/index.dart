import 'package:flutter/material.dart';

class ImageDetailPage extends StatelessWidget {
  static const routeName = '/image-detail';
  final String _imageUrl;

  ImageDetailPage(this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(title: Text('关于')),
        body: Center(
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Hero(tag: _imageUrl, child: Image.network(_imageUrl)))));
  }
}
