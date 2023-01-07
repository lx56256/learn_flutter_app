import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/i18n/current_localization.dart';

EventBus eventBus = EventBus();

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('分组')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(),
              MyText(),
              Text(S.of(context).title),
              Text(S.of(context).message),
              ElevatedButton(
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000));
                  },
                  child: Text(S.of(context).pickTime))
            ],
          ),
        ));
  }
}

class UserInfo {
  String nickname;
  int level;
  UserInfo(this.nickname, this.level);
}

class ContainerListener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTapDown: (details) {
            print('out click');
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
        ),
        GestureDetector(
          onTapDown: (details) {
            print('inner');
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: () {
          final UserInfo user = UserInfo('seel', 19);
          eventBus.fire(user);
        },
        child: Text(
          '改变数据',
          style: TextStyle(fontSize: 20),
        ));
  }
}

class MyText extends StatefulWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  String _message = 'hello';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eventBus.on<UserInfo>().listen((event) {
      setState(() {
        _message = '${event.level}, ${event.nickname}';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(_message, style: TextStyle(fontSize: 30, color: Colors.green));
  }
}
