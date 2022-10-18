import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/common/user_global_controller.dart';
import 'package:news_app/detail/detail_screen.dart';
import 'package:news_app/home/home_screen.dart';
import 'package:news_app/login/login_screen.dart';
import 'package:news_app/menu/menu_screen.dart';
import 'package:news_app/movie/movie_list_screen.dart';
import 'package:news_app/profile/profile_screen.dart';
import 'package:news_app/profile_edit/profile_edit_screen.dart';
import 'package:news_app/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(UserGlobalController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.orange,
          elevation: 3,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[50],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
        ),
        textTheme: const TextTheme(
          caption: TextStyle(
            fontSize: 14,
            color: Colors.black87,
            height: 2,
          ),
        ),
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => const SplashScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/profile', page: () => const ProfileScreen()),
        GetPage(name: "/profile/edit", page: () => const ProfileEditScreen()),
        GetPage(name: '/menu', page: () => const MenuScreen()),
        GetPage(name: '/detail', page: () => const DetailScreen()),
        GetPage(name: '/movie-list', page: () => const MovieListScreen()),
      ],
    );
  }
}
