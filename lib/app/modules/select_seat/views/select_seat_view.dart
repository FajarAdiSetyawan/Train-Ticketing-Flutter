import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:train_ticketing/app/constant/colors.dart';
import 'package:train_ticketing/app/utils/custom.dart';

import '../controllers/select_seat_controller.dart';

class SelectSeatView extends GetView<SelectSeatController> {
  const SelectSeatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(
                height: context.mediaQueryPadding.top,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 100,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Pilih tempat\ndudukmu",
                      style: TextStyle(
                        fontSize: 25,
                        color: greyBluePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ekonomi (C)",
                          style: TextStyle(
                              // fontSize: 25,
                              ),
                        ),
                        Text(
                          "Kereta 1",
                          style: TextStyle(
                            fontSize: 18,
                            color: bluePrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemStatusChair(
                      title: "Tersedia",
                      color: Colors.white,
                    ),
                    ItemStatusChair(
                      title: "Terisi",
                      color: Colors.amber,
                    ),
                    ItemStatusChair(
                      title: "Terpilih",
                      color: bluePrimary,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kereta",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "A",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "B",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "C",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "D",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "E",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 60,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Obx(
                                    () => Column(
                                      children: [
                                        ...List.generate(
                                          controller.kereta.length,
                                          (index) => GestureDetector(
                                            onTap: () =>
                                                controller.changeKereta(index),
                                            child: Container(
                                              height: 150,
                                              margin: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: controller.indexNoKereta
                                                            .value ==
                                                        index
                                                    ? Colors.amber
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Colors.black26,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "${index + 1}",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Obx(
                                  () => GridView.builder(
                                    padding: const EdgeInsets.all(20),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10,
                                    ),
                                    itemCount: controller
                                        .kereta[controller.indexNoKereta.value]
                                        .length,
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                      onTap: () => controller.selectSeat(index),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: controller.kereta[controller
                                                          .indexNoKereta.value]
                                                      [index]["status"] ==
                                                  "available"
                                              ? Colors.white
                                              : controller.kereta[controller
                                                              .indexNoKereta
                                                              .value][index]
                                                          ["status"] ==
                                                      "filled"
                                                  ? Colors.amber
                                                  : bluePrimary,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Colors.black38,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 80,
                color: Colors.transparent,
                child: Center(
                  child: GradientElevatedButton(
                    height: 40,
                    width: Get.width * 0.7,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "PILIH TEMPAT DUDUK",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ItemStatusChair extends StatelessWidget {
  const ItemStatusChair({
    super.key,
    required this.title,
    required this.color,
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(5),
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: color,
            ),
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
