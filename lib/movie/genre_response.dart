import 'dart:convert';

import 'package:news_app/movie/genres.dart';

GenreResponse genreResponseFromJson(String str) =>
    GenreResponse.fromJson(json.decode(str));

String genreResponseToJson(GenreResponse data) => json.encode(data.toJson());

class GenreResponse {
  GenreResponse({
    this.status,
    this.totalResults,
    this.sources,
  });

  String? status;
  int? totalResults;
  List<Genres>? sources;

  factory GenreResponse.fromJson(Map<String, dynamic> json) => GenreResponse(
        status: json["status"] ?? null,
        totalResults: json["totalResults"] ?? null,
        sources: json["sources"] == null
            ? null
            : List<Genres>.from(json["sources"].map((x) => Genres.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status ?? null,
        "totalResults": totalResults ?? null,
        "sources": sources == null
            ? null
            : List<dynamic>.from(sources!.map((x) => x.toJson())),
      };
}
