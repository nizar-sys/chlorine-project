import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/movie/move_controller.dart';
import 'package:news_app/movie/movie_item.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({Key? key}) : super(key: key);

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie List'),
      ),
      body: GetBuilder(
          init: MovieController(),
          builder: (MovieController controller) {
            return Scaffold(
              body: controller.isLoading == true
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: controller.listMovies.length,
                      itemBuilder: (context, index) {
                        return MovieItem(controller.listMovies[index]);
                      },
                    ),
            );
          }),
    );
  }
}
