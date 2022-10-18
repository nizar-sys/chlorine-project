import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:news_app/common/user_global_controller.dart';
import 'package:news_app/home/home_screen.dart';
import 'package:news_app/movie/movie_genres_screen.dart';
import 'package:news_app/news/news_screen.dart';
import 'package:news_app/profile/profile_screen.dart';
import 'package:news_app/users/users_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  var listWidget = [
    const HomeScreen(),
    const NewsScreen(),
    const MovieGenreScreen(),
    const UserScreen(),
    const ProfileScreen(),
  ];
  var titleWidget = [
    'Home',
    'News',
    'Movie Genres',
    'Users Contact',
    'My profile',
  ];
  int navIndex = 0;
  final listPopMenu = {'Edit Profil', 'Logout'};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleWidget[navIndex]),
        actions: [
          PopupMenuButton(
            onSelected: ((value) {
              handleClick(context, value);
            }),
            itemBuilder: ((context) {
              return listPopMenu.map((choice) {
                return PopupMenuItem(value: choice, child: Text(choice));
              }).toList();
            }),
          )
        ],
      ),
      body: listWidget[navIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              navIndex = index;
            });
          },
          currentIndex: navIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie), label: "Movie Genres"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "Users"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }

  void handleClick(BuildContext context, Object? value) {
    switch (value) {
      case 'Logout':
        UserGlobalController userGlobalController = Get.find();
        userGlobalController.deleteSession();
        const snackBar = SnackBar(content: Text("Logout Berhasil!"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        Get.offNamed("login");
        break;

      case 'Edit Profil':
        Get.toNamed('profile/edit');
        break;
    }
  }
}
