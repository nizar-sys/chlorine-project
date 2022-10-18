import 'dart:convert';

import 'package:news_app/news/article.dart';

ArticleResponse articleResponseFromJson(String str) =>
    ArticleResponse.fromJson(json.decode(str));

String articleResponseToJson(ArticleResponse data) =>
    json.encode(data.toJson());

class ArticleResponse {
  ArticleResponse({
    this.status,
    this.totalResults,
    this.articles,
  });

  String? status;
  int? totalResults;
  List<Article>? articles;

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      ArticleResponse(
        status: json["status"] == null ? null : json["status"],
        totalResults:
            json["totalResults"] == null ? null : json["totalResults"],
        articles: json["articles"] == null
            ? null
            : List<Article>.from(
                json["articles"].map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "totalResults": totalResults == null ? null : totalResults,
        "articles": articles == null
            ? null
            : List<dynamic>.from(articles!.map((x) => x.toJson())),
      };
}
