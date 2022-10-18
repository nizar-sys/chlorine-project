import 'package:get/get.dart';
import 'package:news_app/common/app_network.dart';
import 'package:news_app/movie/movies.dart';

class MovieController extends GetxController {
  final AppNetwork _appNetwork = AppNetwork();
  List<Movies> listMovies = [];
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
      final res = await _appNetwork.fetchMovies();
      listMovies.addAll(res.movies ?? []);
      update();
    } catch (e) {
      print(e.toString());
    }

    isLoading = false;
    update();
  }
}
