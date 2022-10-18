import 'package:news_app/movie/source.dart';

class Genres {
  Genres({
    this.id,
    this.title,
  });

  dynamic id;
  String? title;

  factory Genres.fromJson(Map<String, dynamic> json) => Genres(
        id: json["id"] ?? null,
        title: json["title"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? null,
        "title": title ?? null,
      };
}
