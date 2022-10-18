import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/news/article.dart';

class NewsItem extends StatelessWidget {
  final Article model;
  const NewsItem(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gambar = model.urlToImage ?? "";
    var judul = model.title ?? "-";
    var sumber = model.source?.name ?? "-";
    var deskripsi = model.description ?? "-";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 6,
        child: IntrinsicHeight(
          child: InkWell(
            onTap: () {
              Get.toNamed('detail', arguments: {
                'judul': judul,
                'gambar': gambar,
                'sumber': sumber,
                'deskripsi': deskripsi
              });
            },
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
                        Text(
                          sumber,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.orange),
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
