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
                      height: 32.0,
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

EasyDateTimeLine _mainExample() {
  return EasyDateTimeLine(
    initialDate: DateTime.now(),
    onDateChange: (selectedDate) {
      //[selectedDate] the new date selected.
    },
  );
}

EasyDateTimeLine _customBackgroundExample() {
  return EasyDateTimeLine(
    initialDate: DateTime.now(),
    onDateChange: (selectedDate) {
      //[selectedDate] the new date selected.
    },
    headerProps: const EasyHeaderProps(
      monthPickerType: MonthPickerType.switcher,
      selectedDateFormat: SelectedDateFormat.fullDateDMY,
    ),
    dayProps: const EasyDayProps(
      dayStructure: DayStructure.dayStrDayNum,
      activeDayDecoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff3371FF),
            Color(0xff8426D6),
          ],
        ),
      ),
    ),
  );
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

EasyDateTimeLine _changeDayStructureExample() {
  return EasyDateTimeLine(
    initialDate: DateTime.now(),
    onDateChange: (selectedDate) {
      //[selectedDate] the new date selected.
    },
    activeColor: const Color(0xffFFBF9B),
    headerProps: const EasyHeaderProps(
      selectedDateFormat: SelectedDateFormat.monthOnly,
    ),
    dayProps: const EasyDayProps(
      dayStructure: DayStructure.dayNumDayStr,
      inactiveBorderRadius: 48.0,
      height: 56.0,
      width: 56.0,
      activeDayNumStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      inactiveDayNumStyle: TextStyle(
        fontSize: 18.0,
      ),
    ),
  );
}

EasyDateTimeLine _landscapeViewExample() {
  return EasyDateTimeLine(
    initialDate: DateTime.now(),
    onDateChange: (selectedDate) {
      //[selectedDate] the new date selected.
    },
    activeColor: const Color(0xff116A7B),
    dayProps: const EasyDayProps(
      landScapeMode: true,
      activeBorderRadius: 48.0,
      dayStructure: DayStructure.dayStrDayNum,
    ),
    headerProps: const EasyHeaderProps(
      selectedDateFormat: SelectedDateFormat.fullDateDMonthAsStrY,
    ),
  );
}

EasyDateTimeLine _localeExample() {
  return EasyDateTimeLine(
    initialDate: DateTime.now(),
    onDateChange: (selectedDate) {
      //[selectedDate] the new date selected.
    },
    activeColor: const Color(0xffB04759),
    locale: "ar",
  );
}

EasyDateTimeLine _changeHeaderAppearanceExample() {
  return EasyDateTimeLine(
    initialDate: DateTime.now(),
    onDateChange: (selectedDate) {
      //[selectedDate] the new date selected.
    },
    activeColor: const Color(0xff37306B),
    headerProps: const EasyHeaderProps(
      monthPickerType: MonthPickerType.switcher,
      selectedDateFormat: SelectedDateFormat.fullDateDayAsStrMY,
    ),
    dayProps: const EasyDayProps(
      activeBorderRadius: 32.0,
      inactiveBorderRadius: 32.0,
      // landScapeMode: true,
    ),
    timeLineProps: const EasyTimeLineProps(
      hPadding: 16.0, // padding from left and right
      separatorPadding: 16.0, // padding between days
    ),
  );
}

EasyDateTimeLine _customizeDayAppearanceExample() {
  return EasyDateTimeLine(
    initialDate: DateTime.now(),
    onDateChange: (selectedDate) {
      //[selectedDate] the new date selected.
    },
    dayProps: const EasyDayProps(
      height: 56.0,
      //you must provide the width in this case
      width: 124.0,
      activeBorderRadius: 16.0,
    ),
    headerProps: const EasyHeaderProps(
      selectedDateFormat: SelectedDateFormat.fullDateMonthAsStrDY,
    ),
    itemBuilder: (BuildContext context, String dayNumber, dayName, monthName, fullDate, isSelected) {
      return Container(
        //the same width that provided previously.
        width: 124.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffFF6D60) : null,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              monthName,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Colors.white : const Color(0xff6D5D6E),
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              dayNumber,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : const Color(0xff393646),
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              dayName,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Colors.white : const Color(0xff6D5D6E),
              ),
            ),
          ],
        ),
      );
    },
  );
}
