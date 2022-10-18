import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/common/user_global_controller.dart';

class SplashController extends GetxController {
  UserGlobalController userGlobalController = Get.find();

  @override
  void onInit() {
    finishPage();
    super.onInit();
  }

  void finishPage() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (userGlobalController.isUserLogin) {
        Get.offNamed("menu");
      } else {
        Get.offNamed("login");
      }
    });
  }
}
