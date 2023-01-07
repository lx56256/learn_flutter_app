import 'dart:math';

import 'package:flutter/material.dart';

class SubjectPage extends StatefulWidget {
  const SubjectPage({Key? key}) : super(key: key);

  @override
  State<SubjectPage> createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _opacityAnimation;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _radiansAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    _sizeAnimation = Tween(begin: 0.0, end: 200.0).animate(_animation);
    _opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(_animation);
    _colorAnimation =
        ColorTween(begin: Colors.orange, end: Colors.red).animate(_animation);
    _radiansAnimation = Tween(begin: 0.0, end: 2 * pi).animate(_animation);

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('_SubjectPageState build');
    return Scaffold(
      appBar: AppBar(title: Text('个人中心')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
                animation: _animationController,
                builder: (ctx, child) {
                  return Opacity(
                    opacity: _opacityAnimation.value,
                    child: Transform(
                      transform: Matrix4.rotationZ(_radiansAnimation.value),
                      alignment: Alignment.center,
                      child: Container(
                        width: _sizeAnimation.value,
                        height: _sizeAnimation.value,
                        color: _colorAnimation.value,
                      ),
                    ),
                  );
                }),
            ElevatedButton(
                onPressed: () {
                  if (_animationController.isAnimating) {
                    _animationController.stop();
                  } else if (_animationController.isCompleted) {
                    _animationController.reverse();
                  } else if (_animationController.isDismissed) {
                    _animationController.forward();
                  } else if (_animationController.status ==
                      AnimationStatus.forward) {
                    _animationController.forward();
                  } else if (_animationController.status ==
                      AnimationStatus.reverse) {
                    _animationController.reverse();
                  }
                },
                child: Text('开始动画'))
          ],
        ),
      ),
    );
  }
}

// class IconAnimation extends AnimatedWidget {
//   final Animation<double> _sizeAnimation;
//   IconAnimation(this._sizeAnimation) : super(listenable: _sizeAnimation);
//   @override
//   Widget build(BuildContext context) {
//     print('IconAnimation build');
//     // TODO: implement build
//     return Icon(
//       Icons.favorite,
//       color: Colors.red,
//       size: _sizeAnimation.value,
//     );
//   }
// }
