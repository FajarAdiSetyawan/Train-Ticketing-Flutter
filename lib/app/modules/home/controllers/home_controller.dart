import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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

  var selectedDate = DateTime.now().obs;

  String selectDateFormat() {
    final format = DateFormat('dd MMM yyyy');
    return format.format(selectedDate.value);
  }

  void selectDate(BuildContext context) async {
    DateTime currentDate = DateTime.now();
    DateTime maxDate = currentDate.add(const Duration(days: 60));
    DateTime minDate = currentDate.subtract(const Duration(days: 30));

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: minDate,
      lastDate: maxDate,
      // locale: Locale(_languageCode),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            colorScheme: const ColorScheme.light(primary: Colors.blue),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
  }
}
