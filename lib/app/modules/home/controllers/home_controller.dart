import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final totalPassanger = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => totalPassanger.value++;
  void decrement() {
    if (totalPassanger.value >= 1) {
      totalPassanger.value--;
    }
  }

  Color get iconColor {
    return totalPassanger.value == 0 ? Colors.grey : Color(0xFF59597C);
  }

  RxBool switchPP = false.obs;

  RxMap<String, dynamic> title = <String, dynamic>{
    "departure": "Gambir",
    "destination": "Solo Balapan",
  }.obs;
}
