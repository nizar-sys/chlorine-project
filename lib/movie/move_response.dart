import 'dart:convert';

import 'package:news_app/movie/movies.dart';

MovieResponse movieResponseFromJson(String str) =>
    MovieResponse.fromJson(json.decode(str));

String movieResponseToJson(MovieResponse data) => json.encode(data.toJson());

class MovieResponse {
  MovieResponse({
    this.status,
    this.totalResults,
    this.movies,
  });

  String? status;
  int? totalResults;
  List<Movies>? movies;

  factory MovieResponse.fromJson(Map<String, dynamic> json) => MovieResponse(
        status: json["status"] ?? null,
        totalResults: json["totalResults"] ?? null,
        movies: json["movies"] == null
            ? null
            : List<Movies>.from(json["movies"].map((x) => Movies.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status ?? null,
        "totalResults": totalResults ?? null,
        "movies": movies == null
            ? null
            : List<dynamic>.from(movies!.map((x) => x.toJson())),
      };
}
