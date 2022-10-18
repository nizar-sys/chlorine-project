import 'package:news_app/movie/source.dart';

class Movies {
  Movies({
    this.id,
    this.title,
    this.overview,
    this.image,
    this.release_date,
    this.vote_average,
  });

  dynamic id;
  String? title;
  String? overview;
  String? image;
  String? release_date;
  dynamic? vote_average;

  factory Movies.fromJson(Map<String, dynamic> json) => Movies(
        id: json["id"] ?? null,
        title: json["title"] ?? null,
        overview: json["overview"] ?? null,
        image: json["image"] ?? null,
        release_date: json["release_date"] ?? null,
        vote_average: json["vote_average"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? null,
        "title": title ?? null,
        "overview": overview ?? null,
        "image": image ?? null,
        "release_date": release_date ?? null,
        "vote_average": vote_average ?? null,
      };
}
