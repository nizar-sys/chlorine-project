import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/movie/genres.dart';

class GenreItem extends StatelessWidget {
  final Genres model;
  const GenreItem(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var judul = model.title ?? "-";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        child: IntrinsicHeight(
          child: InkWell(
            onTap: () {
              Get.toNamed('movie-list');
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          judul,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
