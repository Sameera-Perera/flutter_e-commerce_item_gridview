import 'package:flutter_gridview_example/controller/item_controller.dart';
import 'package:get/get.dart';

class ItemBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ItemController(),permanent: true);
  }
}