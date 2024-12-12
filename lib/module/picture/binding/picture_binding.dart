import 'package:get/get.dart';
import '../controller/detail_picture_controller.dart';
import '../controller/list_picture_controller.dart';

class PictureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListPictureController());
    Get.lazyPut(() => DetailPictureController());
  }
}
