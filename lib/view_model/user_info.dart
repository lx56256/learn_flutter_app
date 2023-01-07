import 'package:flutter/material.dart';
import './model/user.dart';

class UserViewModel extends ChangeNotifier {
  UserInfo _user;
  UserViewModel(this._user);
  UserInfo get user => _user;
  set counter(UserInfo value) {
    _user = value;
    notifyListeners();
  }
}
