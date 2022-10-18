import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/movie/genre_item.dart';
import 'package:news_app/movie/movie_genre_controller.dart';

class MovieGenreScreen extends StatefulWidget {
  const MovieGenreScreen({super.key});

  @override
  State<MovieGenreScreen> createState() => _MovieGenreScreenState();
}

class _MovieGenreScreenState extends State<MovieGenreScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MovieGenreController(),
      builder: (MovieGenreController controller) {
        return Scaffold(
          body: controller.isLoading == true
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: controller.listGenres.length,
                  itemBuilder: (context, index) {
                    return GenreItem(controller.listGenres[index]);
                  },
                ),
        );
      },
    );
  }
}
