import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              arg['gambar'],
              fit: BoxFit.cover,
              width: double.infinity,
              height: 230,
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(arg['judul'],
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                      ),
                      InkWell(
                          onTap: () {
                            const snackBar =
                                SnackBar(content: Text("Share artikel ..."));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: const Icon(
                            Icons.share,
                            size: 28,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(arg['deskripsi'],
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.black)),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Sumber : ${arg['sumber']}",
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
