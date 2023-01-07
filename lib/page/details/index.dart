import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail';
  final String _message;

  DetailPage(this._message);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.purple),
      child: WillPopScope(
        onWillPop: () {
          backHome(context);
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(title: Text('详情页')),
          body: Center(
              child: Container(
                  child: Column(
            children: [
              Text('details'),
              Text(_message),
              ElevatedButton(
                  onPressed: () => backHome(context), child: Text('返回'))
            ],
          ))),
          floatingActionButton: Theme(
            data: Theme.of(context).copyWith(
                colorScheme: Theme.of(context)
                    .colorScheme
                    .copyWith(secondary: Colors.red)),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.pets),
            ),
          ),
        ),
      ),
    );
  }

  void backHome(BuildContext context) {
    Navigator.of(context).pop('details message');
  }
}
