import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/common/user_global_controller.dart';

class HomeController extends GetxController {
  TextEditingController txtNama = TextEditingController();
  var nama = "user";
  UserGlobalController userGlobalController = Get.find();

  @override
  void onInit() {
    nama = userGlobalController.nama ?? "-";
    super.onInit();
  }
}
