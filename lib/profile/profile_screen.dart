import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/profile/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProfileController(),
        builder: (ProfileController controller) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(180),
                        child: Image.network(
                          "https://avatars.githubusercontent.com/u/74032907?s=400&u=e3a89c97737d8f71a52af2a24c13474bb52e17f7&v=4",
                          width: 160,
                          height: 160,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(controller.namaLengkap,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama Panggilan",
                          textAlign: TextAlign.left,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                      Text(controller.namaPanggilan,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: Colors.black)),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email",
                          textAlign: TextAlign.left,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                      Text(controller.email,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: Colors.black)),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pekerjaan",
                          textAlign: TextAlign.left,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                      Text(controller.pekerjaan,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: Colors.black)),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hobi",
                          textAlign: TextAlign.left,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                      Text(controller.hobi,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: Colors.black)),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          );
        });
  }

  void redirectToHome(context) {
    Get.back();
  }
}
