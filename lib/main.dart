import 'package:flutter/material.dart';
import 'package:flutter_mvc/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'MVC App',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
    ),
  );
}
