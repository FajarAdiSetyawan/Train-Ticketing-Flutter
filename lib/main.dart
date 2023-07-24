import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      // initialRoute: Routes.SELECT_SEAT,
      getPages: AppPages.routes,
      theme: ThemeData(
        fontFamily: 'Jakarta',
        useMaterial3: true,
      ),
    ),
  );
}
