import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (SplashController controller) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Center(
                    child: Icon(Icons.rocket_launch,
                        size: 150, color: Colors.blue)),
                SizedBox(height: 12),
                Center(
                    child: Text("News Apps",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold))),
              ],
            ),
          );
        });
  }
}
