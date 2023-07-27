import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:train_ticketing/app/modules/detail_passenger/views/item_detail_passenger.dart';

class DetailPassengerController extends GetxController {
  //TODO: Implement DetailPassengerController

  final count = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  RxInt passengerCount = 1.obs;
  RxList<Widget> passengerList = <Widget>[].obs;

  @override
  void onInit() {
    super.onInit();
    updatePassengerList();
  }

  void incrementPassengerCount() {
    passengerCount++;
    updatePassengerList();
  }

  void updatePassengerList() {
    passengerList.clear();
    for (int i = 0; i < passengerCount.value; i++) {
      passengerList.add(PassengerCard(passengerNumber: i + 1));
    }
    update(); // Notify GetX that the state has changed
  }
}
