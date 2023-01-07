import 'package:flutter/material.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:flutter_app/page/home/item.dart';
import 'package:flutter_app/service/http_request.dart';

class BodyContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<BodyContent> {
  List<MovieItem> movies = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHttpData();
  }

  getHttpData() async {
    var result = await HttpRequest.request(
      '/j/search_subjects?type=movie&tag=%E8%B1%86%E7%93%A3%E9%AB%98%E5%88%86&page_limit=50&page_start=0',
    );
    final data = result['subjects'];
    for (var item in data) {
      setState(() {
        movies.add(MovieItem.fromJson(item));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (ctx, index) {
          return MovieItemCard(movie: movies[index]);
        });
  }
}
