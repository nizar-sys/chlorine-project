import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class UserSessionPref {
  static String sessionName = "usersession";

  static saveUserSession(Map<String, dynamic> data) async {
    final pref = await SharedPreferences.getInstance();

    pref.setString(sessionName, jsonEncode(data));
  }

  static Future<Map<String, dynamic>> loadUserSession() async {
    final pref = await SharedPreferences.getInstance();
    final res = pref.getString(sessionName);

    if (res != null) {
      return jsonDecode(res);
    } else {
      return {};
    }
  }

  static deleteUserSession() async {
    final pref = await SharedPreferences.getInstance();

    pref.remove(sessionName);
  }
}
