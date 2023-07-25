import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:train_ticketing/app/modules/home/controllers/home_controller.dart';

import '../controllers/select_train_controller.dart';

class SelectTrainView extends GetView<SelectTrainController> {
  String titleSelectTrain = ""; // Declare the variable without initialization

  void initializeTitle() {
    final controllerHome = Get.find<HomeController>();
    titleSelectTrain = "${controllerHome.title['departure']} - ${controllerHome.title['destination']}";
  }

  // final Rx<DateTime> _selectedDate = DateTime.now().add(const Duration(days: 2)).obs;

  final DatePickerController _datePickerController = DatePickerController();

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    DateTime startDate = now.subtract(const Duration(days: 14));
    DateTime endDate = now.add(const Duration(days: 60));
    print('startDate = $startDate ; endDate = $endDate');

    initializeTitle();

    return Scaffold(
      appBar: AppBar(
        title: Text(titleSelectTrain), // Use the initialized titleSelectTrain here
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg_img.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DatePicker(
                      DateTime.now(),
                      initialSelectedDate: DateTime.now(),
                      locale: 'id',
                      activeDates: [
                        DateTime.now(),
                      ],
                      selectionColor: Colors.blue,
                      selectedTextColor: Colors.white,
                      onDateChange: (date) {
                        // New date selected
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
