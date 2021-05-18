import 'package:flutter_gridview_example/model/item.dart';
import 'package:flutter_gridview_example/service/remote_serivce.dart';
import 'package:get/get.dart';

class ItemController extends GetxController{
  var isLoading = true.obs;
  var isAddLoading = false.obs;
  var itemList = List<Item>.empty(growable: true).obs;


  @override
  void onInit() {
    fetchItem(0);
    super.onInit();
  }

  void fetchItem(int start) async {
    try{
      isLoading(true);
      itemList.clear();
      var response = await RemoteServices.fetchItem(start);
      if(response.statusCode == 200){
        List<Item> items = itemFromJson(response.body);
        itemList.assignAll(items);
      }
    }
    finally{
      isLoading(false);
    }
  }

  void addItem(int start) async {
    try{
      isAddLoading(true);
      var response = await RemoteServices.fetchItem(start);
      if(response.statusCode == 200){
        List<Item> items = itemFromJson(response.body);
        itemList.addAll(items);
      }
    }
    finally{
      isAddLoading(false);
    }
  }
}