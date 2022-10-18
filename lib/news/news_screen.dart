import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/news/news_controller.dart';
import 'package:news_app/news/news_item.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: NewsController(),
        builder: (NewsController controller) {
          return Scaffold(
            body: controller.isLoading == true
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.listArticle.length,
                    itemBuilder: (context, index) {
                      return NewsItem(controller.listArticle[index]);
                    },
                  ),
          );
        });
  }
}
