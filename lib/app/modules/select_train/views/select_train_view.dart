import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/select_train_controller.dart';

class SelectTrainView extends GetView<SelectTrainController> {
  const SelectTrainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectTrainView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SelectTrainView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
