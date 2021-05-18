import 'package:flutter_gridview_example/view/item/item_binding.dart';
import 'package:flutter_gridview_example/view/item/item_screen.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.ITEM,
      page: () => ItemScreen(),
      binding: ItemBinding(),
    ),
  ];
}
