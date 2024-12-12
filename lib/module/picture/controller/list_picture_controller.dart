import 'package:get/get.dart';
import '../../../service/picture/picture_service.dart';

class ListPictureController extends GetxController {
  var pictures = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchPictures();
    super.onInit();
  }

  void fetchPictures() async {
    try {
      isLoading(true);
      pictures.value = await PictureService().fetchPictures();
    } finally {
      isLoading(false);
    }
  }
}
