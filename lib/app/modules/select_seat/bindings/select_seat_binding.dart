import 'package:get/get.dart';

import '../controllers/select_seat_controller.dart';

class SelectSeatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectSeatController>(
      () => SelectSeatController(),
    );
  }
}
