import 'package:flutter/material.dart';

class StartRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;
  final Widget unselectedImage;
  final Widget selectedImage;

  StartRating({
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    Widget? unselectedImage,
    Widget? selectedImage,
  })  : unselectedImage = unselectedImage ??
            Icon(Icons.star_border, size: size, color: unselectedColor),
        selectedImage =
            selectedImage ?? Icon(Icons.star, size: size, color: selectedColor);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StartRatingState();
  }
}

class _StartRatingState extends State<StartRating> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Row(mainAxisSize: MainAxisSize.min, children: buildUnSelectedStar()),
        Row(mainAxisSize: MainAxisSize.min, children: buildSelectedStar())
      ],
    );
  }

  List<Widget> buildUnSelectedStar() {
    return List.generate(widget.count, (index) {
      return Icon(Icons.star_border,
          size: widget.size, color: widget.unselectedColor);
    });
  }

  List<Widget> buildSelectedStar() {
    final Widget star =
        Icon(Icons.star, size: widget.size, color: widget.selectedColor);
    List<Widget> stars = [];

    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating / oneValue).floor();

    for (var i = 0; i < entireCount; i++) {
      stars.add(star);
    }

    double leftWidth = ((widget.rating / oneValue) - entireCount) * widget.size;

    final partRect = ClipRect(
      child: star,
      clipper: StarClipper(leftWidth: leftWidth),
    );
    stars.add(partRect);
    return stars;
  }
}

class StarClipper extends CustomClipper<Rect> {
  final double leftWidth;

  StarClipper({required this.leftWidth});

  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, leftWidth, size.height);
  }

  @override
  bool shouldReclip(StarClipper oldClipper) {
    return oldClipper.leftWidth != leftWidth;
  }
}
