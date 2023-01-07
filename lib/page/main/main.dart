import 'package:flutter/material.dart';
import 'package:flutter_app/page/group/index.dart';
import 'package:flutter_app/page/mall/index.dart';
import 'package:flutter_app/page/profile/index.dart';
import 'package:flutter_app/page/subject/hero.dart';
import '../home/home.dart';
import 'package:flutter_app/view_model/index.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          ProfilePage(),
          GroupPage(),
          MallPage(),
          HeroPage(key: ObjectKey({'age': 19})),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(
              label: '首页',
              icon: Icon(Icons.home, color: Colors.red, size: 36.0),
              activeIcon: Icon(Icons.home, color: Colors.blue, size: 36.0)),
          BottomNavigationBarItem(
              label: '集市',
              icon: Icon(Icons.mark_email_read_outlined,
                  color: Colors.red, size: 36.0),
              activeIcon: Icon(Icons.mark_email_read_outlined,
                  color: Colors.blue, size: 36.0)),
          BottomNavigationBarItem(
              label: '分组',
              icon: Icon(Icons.group, color: Colors.red, size: 36.0),
              activeIcon: Icon(Icons.group, color: Colors.blue, size: 36.0)),
          BottomNavigationBarItem(
              label: '购物车',
              icon: Icon(Icons.car_rental, color: Colors.red, size: 36.0),
              activeIcon:
                  Icon(Icons.car_rental, color: Colors.blue, size: 36.0)),
          BottomNavigationBarItem(
              label: '我的',
              icon: Icon(Icons.my_library_books, color: Colors.red, size: 36.0),
              activeIcon:
                  Icon(Icons.my_library_books, color: Colors.blue, size: 36.0))
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
