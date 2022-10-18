import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/common/app_network.dart';
import 'package:news_app/news/article.dart';

class NewsController extends GetxController {
  final AppNetwork _appNetwork = AppNetwork();
  List<Article> listArticle = [];
  bool isLoading = false;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {
    isLoading = true;
    update();
    try {
      final res = await _appNetwork.fetchArticle();

      listArticle.addAll(res.articles ?? []);
      update();
    } catch (e) {
      print(e.toString());
    }

    isLoading = false;
    update();
  }
}
