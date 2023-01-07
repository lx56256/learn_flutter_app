import 'package:flutter/material.dart';

class DashLine extends StatelessWidget {
  final Axis axis;
  final double dashWidth;
  final double dashheight;
  final int count;
  final Color color;
  DashLine({
    this.axis = Axis.horizontal,
    this.color = Colors.red,
    this.count = 10,
    this.dashWidth = 1,
    this.dashheight = 1,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(count, (index) {
        return SizedBox(
          width: dashWidth,
          height: dashheight,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
            ),
          ),
        );
      }),
    );
  }
}
