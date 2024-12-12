import 'package:get/get.dart';
import 'package:mini_project/core.dart';

part 'app_routes.dart';
class AppPages {
  static const INITIAL = AppRoutes.LIST_PICTURES;

  static final routes = [
    GetPage(
      name: AppRoutes.LIST_PICTURES,
      page: () => ListPictureView(),
      binding: PictureBinding(),
    ),
    GetPage(
      name: AppRoutes.DETAIL_PICTURE,
      page: () => DetailPictureView(),
      binding: PictureBinding(),
    ),
  ];
}

