import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:train_ticketing/app/constant/colors.dart';
import 'package:train_ticketing/app/constant/drawer.dart';
import 'package:train_ticketing/app/modules/home/views/item_home.dart';
import 'package:train_ticketing/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(
          // Use Builder widget to get a context that is associated with Scaffold
          builder: (context) => IconButton(
            icon: SvgPicture.asset('assets/images/icons/ic_menu.svg'),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: ListView(
        children: [
          Stack(
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Mau pergi ke\nmana kali ini?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          child: Transform.scale(
                            scale: 3,
                            alignment: Alignment.topCenter,
                            child: Transform.rotate(
                              angle: -0.2,
                              child: Container(
                                height: 100,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/hand.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Card(
                    margin: const EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri teks dalam Column
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri teks dalam Column
                                children: [
                                  const Text(
                                    "Keberangkatan",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue, // bluePrimary harus merupakan Color atau variabel yang telah didefinisikan sebelumnya
                                    ),
                                  ),
                                  const Text(
                                    "GMR",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: greyBluePrimary,
                                    ),
                                  ),
                                  Text(
                                    "Stasiun Gambir",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.swap_horiz,
                                color: Color.fromARGB(255, 48, 145, 224),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end, // Rata kiri teks dalam Column
                                children: [
                                  Text(
                                    "Tujuan",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue[600], // bluePrimary harus merupakan Color atau variabel yang telah didefinisikan sebelumnya
                                    ),
                                  ),
                                  const Text(
                                    "SLO",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: greyBluePrimary,
                                    ),
                                  ),
                                  Text(
                                    "Stasiun Solo Balapan",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey[300],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri teks dalam Column
                                children: [
                                  Text(
                                    "Tanggal keberangkatan",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.blue[600], // bluePrimary harus merupakan Color atau variabel yang telah didefinisikan sebelumnya
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => controller.selectDate(context),
                                    child: Obx(
                                      () => Text(
                                        controller.selectDateFormat(),
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: greyBluePrimary,
                                          fontFamily: 'Jakarta',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Obx(
                                    () => SizedBox(
                                      width: 40,
                                      child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Switch(
                                          value: controller.switchPP.value,
                                          onChanged: (bool value) {
                                            controller.switchPP.value = value;
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Pulang pergi",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Jumlah penumpang",
                                    style: TextStyle(color: Colors.blue[600]),
                                  ),
                                  Row(
                                    children: [
                                      Obx(
                                        () => IconButton(
                                          onPressed: () => controller.decrement(),
                                          icon: Icon(
                                            Icons.remove_circle_outline,
                                            color: controller.iconColor,
                                          ),
                                        ),
                                      ),
                                      Obx(
                                        () => Text(
                                          "${controller.totalPassanger.value}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: greyBluePrimary,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () => controller.increment(),
                                        icon: const Icon(
                                          Icons.add_circle_outline,
                                          color: greyBluePrimary,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () => Get.toNamed(Routes.SELECT_TRAIN),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: orangePrimary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "CARI TIKET",
                                  style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 3,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: 10,
                        ),
                        child: Text(
                          "Tiket saya",
                          style: TextStyle(
                            fontSize: 17,
                            color: greyBluePrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 110,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            CardMyTicketHome(
                              day: "Besok",
                              dayColor: orangePrimary,
                              train: "Bengawan 246",
                              destination: "PSE - PWS",
                            ),
                            CardMyTicketHome(
                              day: "4 Hari",
                              dayColor: Color.fromARGB(138, 108, 191, 239),
                              train: "Argo Lawu 8",
                              destination: "SLO - GMR",
                            ),
                            CardMyTicketHome(
                              day: "7 Hari",
                              dayColor: Color.fromARGB(255, 50, 157, 219),
                              train: "Argo Semeru 18",
                              destination: "GMR - SGU",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: 10,
                        ),
                        child: Text(
                          "Berita",
                          style: TextStyle(
                            fontSize: 17,
                            color: greyBluePrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ItemCardNewsHome(
                              title: "Tips",
                              message: "Tetap jaga\nkomunikasi\nselama di kereta",
                              titleColor: Colors.blue,
                              backgroundTitle: Color(0x9273C8F0),
                              src: 'assets/images/chat.png',
                            ),
                            ItemCardNewsHome(
                              title: "Update",
                              message: "Protokol\nkesehatan di\nkereta",
                              titleColor: Colors.orange,
                              backgroundTitle: Color(0xA4FFCC80),
                              src: 'assets/images/hand_plus.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
