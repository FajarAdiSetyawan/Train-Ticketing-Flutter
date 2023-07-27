import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:train_ticketing/app/constant/colors.dart';
import 'package:train_ticketing/app/modules/detail_passenger/views/item_detail_passenger.dart';
import 'package:train_ticketing/app/routes/app_pages.dart';

import '../controllers/detail_passenger_controller.dart';

class DetailPassengerView extends GetView<DetailPassengerController> {
  const DetailPassengerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ringkasan pemesanan'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Transform.flip(
                flipX: true,
                child: Container(
                  width: Get.width,
                  height: Get.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg_img.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Material(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ItemListTrainDetailPassenger(
                        train: "Argo Semeru",
                        no_train: "18",
                        departure: "GMR",
                        departure_time: "06.20",
                        destination: "SLO",
                        destination_time: "13.39",
                        price: "Rp. 590.000",
                        passenger: 2,
                        travel_time: "7 Jam 19 Menit",
                        train_class: "Eksekutif",
                        train_subclass: "A",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                      bottom: 10,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset('assets/images/icons/ic_love.png'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Penumpang Tersimpan",
                          style: TextStyle(
                            color: greyBluePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ItemSavePassenger(
                          name: "Fajar Adi Setyawan",
                          email: "fajaras465@gmail.com",
                        ),
                        ItemSavePassenger(
                          name: "Fajar Adi Setyawan",
                          email: "fajaras465@gmail.com",
                        ),
                        ItemSavePassenger(
                          name: "Fajar Adi Setyawan",
                          email: "fajaras465@gmail.com",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset('assets/images/icons/ic_passenger.png'),
                        ),
                        const Text(
                          "Detail penumpang",
                          style: TextStyle(
                            color: greyBluePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.incrementPassengerCount();
                          },
                          child: const Text(
                            "+ Tambah Penumpang",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.passengerList.length,
                      itemBuilder: (context, index) => controller.passengerList[index],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20,
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilledButton(
                          onPressed: () => Get.toNamed(Routes.SELECT_SEAT),
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 17,
                              bottom: 17,
                            ),
                            elevation: 10,
                            shadowColor: Colors.grey,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                          ),
                          child: const Text(
                            "PILIH KURSI",
                            style: TextStyle(
                              color: greyBluePrimary,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              letterSpacing: 4,
                            ),
                          ),
                        ),
                        FilledButton(
                          onPressed: () => Get.toNamed(Routes.SELECT_SEAT),
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                              top: 17,
                              bottom: 17,
                            ),
                            elevation: 10,
                            shadowColor: Colors.orange,
                            backgroundColor: orangePrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                          ),
                          child: const Text(
                            "LANJUT",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              letterSpacing: 4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
