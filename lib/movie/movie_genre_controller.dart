import 'package:get/get.dart';
import 'package:news_app/common/app_network.dart';
import 'package:news_app/movie/genres.dart';

class MovieGenreController extends GetxController {
  final AppNetwork _appNetwork = AppNetwork();
  List<Genres> listGenres = [];
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
      final res = await _appNetwork.fetchGenres();
      listGenres.addAll(res.sources ?? []);
      update();
    } catch (e) {
      print(e.toString());
    }

    isLoading = false;
    update();
  }
}
