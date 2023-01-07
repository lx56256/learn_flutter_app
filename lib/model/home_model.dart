int counter = 1;

class MovieItem {
  late String cover;
  late String title;
  late String id;
  late double rate;
  late String desc;
  late int rank;

  MovieItem({
    required this.cover,
    required this.title,
    required this.desc,
    required this.id,
    required this.rate,
    required this.rank,
  });

  MovieItem.fromJson(Map<String, dynamic> json) {
    rank = counter++;
    cover = json['cover'];
    title = json['title'];
    desc = '这是一段超长文字，是一段超长，文字，是一段超长文字，是一段超长 是一段超长。。';
    id = json['id'];

    rate = double.parse(json['rate']);
  }
}
