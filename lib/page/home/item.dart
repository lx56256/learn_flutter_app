import 'package:flutter/material.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:flutter_app/widgets/dashline.dart';
import 'package:flutter_app/widgets/star.dart';

class MovieItemCard extends StatelessWidget {
  final MovieItem movie;

  MovieItemCard({required this.movie});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.red, width: 1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          SizedBox(height: 8),
          buildContent(),
          SizedBox(height: 8),
          buildFooter(),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        'No ${movie.rank}',
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(
          width: 10,
        ),
        buildContentInfo(),
        SizedBox(
          width: 10,
        ),
        buildDashLine(),
        buildContentWish()
      ],
    );
  }

  Widget buildContentImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        movie.cover,
        height: 150,
      ),
    );
  }

  Widget buildContentInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentInfoTitle(),
          SizedBox(
            height: 10,
          ),
          buildContentInfoRate(),
          SizedBox(
            height: 20,
          ),
          buildContentInfoDesc(),
        ],
      ),
    );
  }

  Widget buildContentInfoTitle() {
    return Text.rich(
      TextSpan(children: [
        WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            baseline: TextBaseline.alphabetic,
            child: SizedBox(
              width: 18,
              child: Icon(Icons.play_circle_outline,
                  color: Colors.redAccent, size: 15),
            )),
        ...movie.title.runes
            .map((rune) => WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  baseline: TextBaseline.alphabetic,
                  child: Text(String.fromCharCode(rune),
                      style: TextStyle(
                        fontSize: 22,
                      )),
                ))
            .toList(),
        WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            baseline: TextBaseline.alphabetic,
            child: Text('(1987)',
                style: TextStyle(fontSize: 16, color: Colors.grey)))
      ]),
    );
  }

  Widget buildContentInfoRate() {
    return Row(
      children: [
        StartRating(
          rating: movie.rate,
          size: 20,
        ),
        Text(
          '${movie.rate}',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }

  Widget buildContentInfoDesc() {
    return Text(
      movie.desc,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 18),
    );
  }

  Widget buildDashLine() {
    return Container(
      height: 100,
      child: DashLine(
        axis: Axis.vertical,
        count: 10,
        dashWidth: 1,
        dashheight: 5,
        color: Colors.grey,
      ),
    );
  }

  Widget buildFooter() {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        movie.desc,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16, color: Colors.pink),
      ),
    );
  }

  Widget buildContentWish() {
    return Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            size: 36,
            color: Colors.yellow,
          ),
          Text(
            '想看',
            style: TextStyle(fontSize: 16, color: Colors.yellow[900]),
          )
        ],
      ),
    );
  }
}
