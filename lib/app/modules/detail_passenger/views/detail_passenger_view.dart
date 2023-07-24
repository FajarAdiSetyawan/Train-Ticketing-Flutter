import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_passenger_controller.dart';

class DetailPassengerView extends GetView<DetailPassengerController> {
  const DetailPassengerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailPassengerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailPassengerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
