import 'package:get/get.dart';
import 'package:news_app/common/user_global_controller.dart';

class ProfileController extends GetxController {
  UserGlobalController userGlobalController = Get.find();

  late String namaPanggilan;
  late String namaLengkap;
  late String email;
  late String pekerjaan;
  late String hobi;

  @override
  void onInit() {
    namaPanggilan = userGlobalController.nama ?? "";
    namaLengkap = userGlobalController.namaLengkap ?? "";
    email = userGlobalController.email ?? "";
    pekerjaan = userGlobalController.pekerjaan ?? "";
    hobi = userGlobalController.hobi ?? "";
    super.onInit();
  }
}
