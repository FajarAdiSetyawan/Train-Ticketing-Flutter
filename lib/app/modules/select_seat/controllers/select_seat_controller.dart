import 'package:get/get.dart';

class SelectSeatController extends GetxController {
  //TODO: Implement SelectSeatController

  final count = 0.obs;
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

  var indexNoKereta = 0.obs;

  void reset() {
    kereta.forEach((element) {
      element.forEach((element) {
        if (element['status'] != 'filled') {
          element.update('status', (value) => 'available');
        }
      });
    });
  }

  var kereta = List.generate(
    7,
    (indexKereta) => List<Map<String, dynamic>>.generate(
      100,
      (indexSeat) {
        if (indexKereta == 0) {
          if (indexSeat >= 30 && indexSeat <= 47) {
            return {
              "id": "ID-${indexKereta + 1} - ${indexSeat + 1}",
              "status": "filled",
            };
          } else {
            return {
              "id": "ID-${indexKereta + 1} - ${indexSeat + 1}",
              "status": "available",
            };
          }
        } else if (indexKereta == 1) {
          if (indexSeat >= 21 && indexSeat <= 64) {
            return {
              "id": "ID-${indexKereta + 1} - ${indexSeat + 1}",
              "status": "filled",
            };
          } else {
            return {
              "id": "ID-${indexKereta + 1} - ${indexSeat + 1}",
              "status": "available",
            };
          }
        } else {
          return {
            "id": "ID-${indexKereta + 1} - ${indexSeat + 1}",
            "status": "available",
          };
        }
      },
    ),
  ).obs;

  void changeKereta(int indexKeretaSelected) {
    indexNoKereta.value = indexKeretaSelected;
    kereta.refresh();
  }

  void selectSeat(int seatSelected) {
    print(kereta[indexNoKereta.value][seatSelected]);
    if (kereta[indexNoKereta.value][seatSelected]['status'] == 'available') {
      reset();

      kereta[indexNoKereta.value][seatSelected]
          .update('status', (value) => 'selected');
    }
    kereta.refresh();
  }
}
