import 'package:get/get.dart';

import '../controllers/detail_passenger_controller.dart';

class DetailPassengerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPassengerController>(
      () => DetailPassengerController(),
    );
  }
}
