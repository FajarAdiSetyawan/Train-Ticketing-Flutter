import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:train_ticketing/app/constant/colors.dart';
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  child: Card(
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
                                    "PWT",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: greyBluePrimary,
                                    ),
                                  ),
                                  Text(
                                    "Stasiun Purwokerto",
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
                                  const Text(
                                    "Rabu, 12 Agustus 2023",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: greyBluePrimary,
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
                                onPressed: () => Get.toNamed(Routes.SELECT_SEAT),
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
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Navigation Drawer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home), // Change this line to the desired icon
            title: Text('Home'),
            onTap: () {
              // Navigate to the home page
              Get.toNamed('/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings), // Change this line to the desired icon
            title: Text('Settings'),
            onTap: () {
              // Navigate to the settings page
              Get.toNamed('/settings');
            },
          ),
          // Add more list tiles for other navigation items
        ],
      ),
    );
  }
}
