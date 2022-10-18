import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/common/user_session_pref.dart';

class UserGlobalController extends GetxController {
  String? nama;
  String? namaLengkap;
  String? email;
  String? pekerjaan;
  String? hobi;

  @override
  void onInit() {
    print("UserGlobalController diinisasi!");
    initSession();
    super.onInit();
  }

  void initSession() async {
    try {
      var data = await UserSessionPref.loadUserSession();

      nama = data["nama"];
      namaLengkap = data["namaLengkap"];
      email = data["email"];
      pekerjaan = data["pekerjaan"];
      hobi = data["hobi"];
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void saveSession() async {
    var data = {
      "nama": nama,
      "namaLengkap": namaLengkap,
      "email": email,
      "pekerjaan": pekerjaan,
      "hobi": hobi
    };

    await UserSessionPref.saveUserSession(data);
  }

  void deleteSession() async {
    await UserSessionPref.deleteUserSession();
  }

  get isUserLogin => nama != null && namaLengkap != null && email != null;
}
