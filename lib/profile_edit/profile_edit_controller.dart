import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/common/user_global_controller.dart';

class ProfileEditController extends GetxController {
  UserGlobalController userGlobalController = Get.find();

  TextEditingController txtNamaLengkap = TextEditingController();
  TextEditingController txtNamaPanggilan = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPekerjaan = TextEditingController();
  TextEditingController txtHobi = TextEditingController();

  @override
  void onInit() {
    txtNamaPanggilan.text = userGlobalController.nama ?? "";
    txtNamaLengkap.text = userGlobalController.namaLengkap ?? "";
    txtEmail.text = userGlobalController.email ?? "";
    txtPekerjaan.text = userGlobalController.pekerjaan ?? "";
    txtHobi.text = userGlobalController.hobi ?? "";

    super.onInit();
  }

  void onSubmit() {
    userGlobalController.nama = txtNamaPanggilan.text;
    userGlobalController.namaLengkap = txtNamaLengkap.text;
    userGlobalController.email = txtEmail.text;
    userGlobalController.pekerjaan = txtPekerjaan.text;
    userGlobalController.hobi = txtHobi.text;
    userGlobalController.saveSession();

    Get.snackbar("Sukses", "Berhasil disimpan!");
    redirectToHome();
  }

  void redirectToHome() {
    Get.offAllNamed("menu");
  }
}
