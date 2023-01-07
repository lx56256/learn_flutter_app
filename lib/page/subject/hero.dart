import 'package:flutter/material.dart';
import 'package:flutter_app/page/details/index.dart';
import 'package:flutter_app/page/image_detail/index.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hero')),
      // backgroundColor: Colors.red,
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16 / 9,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8),
        children: List.generate(30, (index) {
          final String _imageUrl =
              'https://picsum.photos/500/500?random=$index';
          return GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (ctx, animation1, animation2) {
                  return FadeTransition(
                    opacity: animation1,
                    child: ImageDetailPage(_imageUrl),
                  );
                }));
              },
              child: Hero(
                tag: _imageUrl,
                child: Image.network(
                  _imageUrl,
                  fit: BoxFit.cover,
                ),
              ));
        }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) {
            //       return DetailPage('mall message');
            //     },
            //     fullscreenDialog: true));

            Navigator.of(context).push(PageRouteBuilder(
                transitionDuration: Duration(seconds: 1),
                pageBuilder: (ctx, animation1, animation2) {
                  return FadeTransition(
                    opacity: animation1,
                    child: DetailPage('mall message'),
                  );
                }));
          }),
    );
  }
}
