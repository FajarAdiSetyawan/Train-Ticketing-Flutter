import 'package:get/get.dart';

import '../controllers/select_train_controller.dart';

class SelectTrainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectTrainController>(
      () => SelectTrainController(),
    );
  }
}
