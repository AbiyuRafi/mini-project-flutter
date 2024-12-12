import 'package:get/get.dart';

class DetailPictureController extends GetxController {
  final picture = Get.arguments ?? {}; 
  @override
  void onInit() {
    super.onInit();
    print(picture); 
    print(picture['download_url']); 
    print(picture['author']);
  }
}
