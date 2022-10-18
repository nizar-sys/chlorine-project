import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/profile_edit/profile_edit_controller.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProfileEditController(),
        builder: (ProfileEditController controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Edit Profile"),
            ),
            body: SingleChildScrollView(
              child: Padding(
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
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama Lengkap",
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                        TextField(
                            controller: controller.txtNamaLengkap,
                            decoration: const InputDecoration(
                                hintText: "Input nama lengkap...")),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
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
                        TextField(
                            controller: controller.txtNamaPanggilan,
                            decoration: const InputDecoration(
                                hintText: "Input nama panggilan...")),
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
                        TextField(
                            controller: controller.txtEmail,
                            decoration: const InputDecoration(
                                hintText: "Input email...")),
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
                        TextField(
                            controller: controller.txtPekerjaan,
                            decoration: const InputDecoration(
                                hintText: "Input pekerjaan...")),
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
                        TextField(
                            controller: controller.txtHobi,
                            decoration: const InputDecoration(
                                hintText: "Input hobi...")),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                            icon: const Icon(Icons.save),
                            onPressed: () => controller.onSubmit(),
                            label: const Text("Simpan"))),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void redirectToHome(context) {
    Get.back();
  }
}
