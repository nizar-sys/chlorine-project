import 'package:dio/dio.dart';
import 'package:news_app/movie/genre_response.dart';
import 'package:news_app/movie/move_response.dart';
import 'package:news_app/news/article_response.dart';

class AppNetwork {
  final Dio _dio = Dio();

  Future<ArticleResponse> fetchArticle() async {
    final response = await _dio.get(
        "https://newsapi.org/v2/top-headlines?country=id&apiKey=0c8a7f1adb5149cfad81a74666ec25f7");
    if (response.statusCode == 200) {
      final result = ArticleResponse.fromJson(response.data);
      return result;
    } else {
      throw Exception('Failed to load data.');
    }
  }

  Future<GenreResponse> fetchGenres() async {
    final response = await _dio
        .get("https://private-3340a-ramdannur.apiary-mock.com/movie/genre");
    if (response.statusCode == 200) {
      final result = GenreResponse.fromJson(response.data);
      return result;
    } else {
      throw Exception('Failed to load data.');
    }
  }

  Future<MovieResponse> fetchMovies() async {
    final response =
        await _dio.get("https://private-3340a-ramdannur.apiary-mock.com/movie");
    if (response.statusCode == 200) {
      final result = MovieResponse.fromJson(response.data);
      return result;
    } else {
      throw Exception('Failed to load data.');
    }
  }
}
