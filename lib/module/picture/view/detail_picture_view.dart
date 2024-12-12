import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/detail_picture_controller.dart';

class DetailPictureView extends StatelessWidget {
  final controller = Get.put(DetailPictureController());

  @override
  Widget build(BuildContext context) {
    final picture = controller.picture;
    return Scaffold(
      appBar: AppBar(title: Text('Detail Photo')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              picture['download_url'],
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,  // Align text to the right
                children: [
                  Text(
                    'Taken by: ${picture['author']}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
