import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeController(),
        builder: (HomeController controller) {
          return Scaffold(
            body: Center(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 30),
                  child: Image.asset(
                    'assets/img/img_welcome.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                Text(
                  "Selamat datang, ${controller.nama}!",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text("Chlorine News App",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: Colors.black))
              ],
            )),
          );
        });
  }
}
