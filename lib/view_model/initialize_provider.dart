import 'package:flutter_app/view_model/index.dart';
import 'package:flutter_app/view_model/model/user.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import './user_info.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx) => ContainerViewModel()),
  ChangeNotifierProvider(
      create: (ctx) => UserViewModel(UserInfo(30, 'https://url', 'deolp')))
];
