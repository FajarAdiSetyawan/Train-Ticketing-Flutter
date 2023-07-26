import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:train_ticketing/app/constant/colors.dart';
import 'package:train_ticketing/app/modules/home/controllers/home_controller.dart';
import 'package:train_ticketing/app/modules/select_train/views/item_select_train.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import '../controllers/select_train_controller.dart';

class SelectTrainView extends GetView<SelectTrainController> {
  String titleSelectTrain = ""; // Declare the variable without initialization

  void initializeTitle() {
    final controllerHome = Get.find<HomeController>();
    titleSelectTrain = "${controllerHome.title['departure']} - ${controllerHome.title['destination']}";
  }

  @override
  Widget build(BuildContext context) {
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
                image: AssetImage("assets/images/bg_select_train.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _changeTodyHighlightColorExample(),
                    const SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(
                    bottom: 80,
                  ),
                  children: [
                    ItemListTrain(
                      train: "Argo Semeru",
                      no_train: "18",
                      departure: "GMR",
                      departure_time: "06.20",
                      destination: "SLO",
                      destination_time: "13.39",
                      price: "Rp. 590.000",
                      seat: 29,
                      travel_time: "7 Jam 19 Menit",
                      train_class: "Eksekutif",
                      train_subclass: "A",
                    ),
                    ItemListTrain(
                      train: "PLB Bengawan 246",
                      no_train: "18",
                      departure: "PSE",
                      departure_time: "06.00",
                      destination: "SLO 😮",
                      destination_time: "15.22",
                      price: "Rp. 74.000",
                      seat: 29,
                      travel_time: "7 Jam 19 Menit",
                      train_class: "Ekonomi",
                      train_subclass: "C",
                    ),
                    ItemListTrain(
                      train: "Argo Semeru",
                      no_train: "18",
                      departure: "GMR",
                      departure_time: "06.20",
                      destination: "SLO",
                      destination_time: "13.39",
                      price: "Rp. 525.000",
                      seat: 29,
                      travel_time: "7 Jam 19 Menit",
                      train_class: "Eksekutif",
                      train_subclass: "I",
                    ),
                    ItemListTrain(
                      train: "Argo Semeru\nPriority",
                      no_train: "18P",
                      departure: "GMR",
                      departure_time: "06.20",
                      destination: "SLO",
                      destination_time: "13.39",
                      price: "Rp. 1.250.000",
                      seat: 16,
                      travel_time: "7 Jam 19 Menit",
                      train_class: "Eksekutif",
                      train_subclass: "A",
                    ),
                    ItemListTrain(
                      train: "Argo Dwipangga\nLuxury",
                      no_train: "10L",
                      departure: "GMR",
                      departure_time: "08.50",
                      destination: "SLO",
                      destination_time: "15.50",
                      price: "Rp. 1.250.000",
                      seat: 3,
                      travel_time: "7 Jam 19 Menit",
                      train_class: "Eksekutif",
                      train_subclass: "H",
                    ),
                    ItemListTrain(
                      train: "Argo Dwipangga\nLuxury",
                      no_train: "10L",
                      departure: "GMR",
                      departure_time: "08.50",
                      destination: "SLO",
                      destination_time: "15.50",
                      price: "Rp. 1.200.000",
                      seat: 3,
                      travel_time: "7 Jam 19 Menit",
                      train_class: "Eksekutif",
                      train_subclass: "I",
                    ),
                    ItemListTrain(
                      train: "Argo Dwipangga",
                      no_train: "10",
                      departure: "GMR",
                      departure_time: "08.50",
                      destination: "SLO",
                      destination_time: "15.50",
                      price: "Rp. 560.000",
                      seat: 3,
                      travel_time: "7 Jam 19 Menit",
                      train_class: "Eksekutif",
                      train_subclass: "A",
                    ),
                    ItemListTrain(
                      train: "Argo Dwipangga",
                      no_train: "10",
                      departure: "GMR",
                      departure_time: "08.50",
                      destination: "SLO",
                      destination_time: "15.50",
                      price: "Rp. 590.000",
                      seat: 14,
                      travel_time: "7 Jam 19 Menit",
                      train_class: "Eksekutif",
                      train_subclass: "AA",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        extendedPadding: const EdgeInsets.only(
          left: 50,
          top: 20,
          right: 50,
          bottom: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        icon: SvgPicture.asset(
          'assets/images/icons/ic_filter.svg',
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        label: const Text(
          "FILTER",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: orangePrimary,
        tooltip: 'Filter',
        elevation: 5,
        splashColor: Colors.orange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

EasyDateTimeLine _changeTodyHighlightColorExample() {
  return EasyDateTimeLine(
    timeLineProps: const EasyTimeLineProps(
      backgroundColor: Colors.transparent,
    ),
    initialDate: DateTime.now(),
    onDateChange: (selectedDate) {
      //[selectedDate] the new date selected.
    },
    locale: 'id',
    activeColor: const Color(0xff51B6EF),
    headerProps: const EasyHeaderProps(
      showHeader: false,
    ),
    dayProps: EasyDayProps(
      activeDayNumStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      activeDayStrStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      inactiveDayNumStyle: TextStyle(
        color: Colors.grey[400],
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      todayNumStyle: TextStyle(
        color: Colors.grey[800],
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      todayStrStyle: TextStyle(
        color: Colors.grey[800],
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      height: 90,
      dayStructure: DayStructure.dayNumDayStr,
      todayHighlightStyle: TodayHighlightStyle.withBorder,
      todayHighlightColor: const Color(0xFFB3E5FC),
    ),
  );
}
