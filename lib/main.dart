import 'package:flutter/material.dart';
import 'package:flutter_gridview_example/routes/app_pages.dart';
import 'package:flutter_gridview_example/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.ITEM,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
