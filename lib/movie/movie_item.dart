import 'package:flutter/material.dart';
import 'package:news_app/movie/movies.dart';

class MovieItem extends StatelessWidget {
  final Movies model;
  const MovieItem(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gambar = model.image ?? "";
    var judul = model.title ?? "-";
    var sumber = model.title ?? "-";
    var deskripsi = model.overview ?? "-";
    var rating = model.vote_average ?? "-";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        child: IntrinsicHeight(
          child: InkWell(
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  gambar,
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
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
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              '${rating}',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(color: Colors.orange),
                            ),
                            const Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.orange,
                            )
                          ],
                        ),
                        Text(
                          deskripsi,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText2,
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
