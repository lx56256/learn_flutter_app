import 'package:flutter/material.dart';
import 'package:flutter_app/view_model/index.dart';
import 'package:flutter_app/view_model/user_info.dart';
import 'package:provider/provider.dart';
import '../../extension/double_extension/index.dart';
import '../../extension/int_extension/index.dart';

class SharedCounter extends InheritedWidget {
  final int counter;

  SharedCounter({
    required Widget child,
    required this.counter,
  }) : super(child: child);

  static SharedCounter? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  updateShouldNotify(SharedCounter oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.counter != counter;
  }
}

class BodyContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<BodyContent> {
  // int counter = 189;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContentData1(),
        ContentData2(),
        ContentData3(),
        Container(
          width: 400.rpx,
          height: 400.rpx,
          color: Colors.red,
        ),
        Selector<ContainerViewModel, ContainerViewModel>(
            selector: (ctx, vm) => vm,
            shouldRebuild: (pre, next) => false,
            builder: (ctx, vm, child) {
              return ElevatedButton(
                child: child,
                onPressed: () {
                  vm.counter += 1;
                },
              );
            },
            child: Text('增加counter'))
      ],
    ));
  }
}

class ContentData1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<ContainerViewModel>(context).counter;
    // TODO: implement build
    return Text(
      '$counter',
      style: TextStyle(fontSize: 30, color: Colors.red),
    );
  }
}

class ContentData2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '121212',
      style: TextStyle(fontSize: 30, color: Colors.blue),
    );
  }
}

class ContentData3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateData3();
}

class _StateData3 extends State<ContentData3> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer2<ContainerViewModel, UserViewModel>(
        builder: (ctx, vm, vm2, child) {
      return Column(
        children: [
          Text(
            '${vm.counter} ,,,${vm2.user.nickname}',
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ],
      );
    });
  }
}
