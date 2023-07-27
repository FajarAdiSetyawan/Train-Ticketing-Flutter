import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:train_ticketing/app/constant/colors.dart';
import 'package:train_ticketing/app/routes/app_pages.dart';

class ItemListTrainDetailPassenger extends StatelessWidget {
  ItemListTrainDetailPassenger({
    super.key,
    required this.train,
    required this.no_train,
    required this.departure,
    required this.departure_time,
    required this.destination,
    required this.destination_time,
    required this.train_class,
    required this.train_subclass,
    required this.price,
    required this.passenger,
    required this.travel_time,
  });

  String train = "";
  String no_train = "";
  String departure = "";
  String departure_time = "";
  String destination = "";
  String destination_time = "";
  String train_class = "";
  String train_subclass = "";
  String price = "";
  int passenger = 0;
  String travel_time = "";

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 12,
      shadowColor: Colors.black45,
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$train ($no_train)",
                  style: const TextStyle(
                    color: greyBluePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          departure,
                          style: const TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(departure_time),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 70,
                      child: Image.asset(
                        'assets/images/line_train.png',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination,
                          style: const TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(destination_time),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: train_class == "Eksekutif"
                            ? Colors.blue[100]
                            : train_class == "Bisnis"
                                ? Colors.grey[200]
                                : train_class == "Ekonomi"
                                    ? Colors.orange[100]
                                    : Colors.orange[100],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 3,
                          left: 10,
                          right: 10,
                          bottom: 3,
                        ),
                        child: Text(
                          "$train_class - $train_subclass",
                          style: TextStyle(
                            color: train_class == "Eksekutif"
                                ? Colors.blue
                                : train_class == "Bisnis"
                                    ? Colors.grey[700]
                                    : train_class == "Ekonomi"
                                        ? Colors.orange
                                        : Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(travel_time)
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: greyBluePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "$passenger penumpang",
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                FloatingActionButton.small(
                  onPressed: () => Get.toNamed(Routes.SELECT_TRAIN),
                  backgroundColor: Colors.blue[500],
                  child: const Icon(
                    Icons.arrow_outward,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemSavePassenger extends StatelessWidget {
  ItemSavePassenger({
    super.key,
    required this.name,
    required this.email,
  });

  String name = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 5,
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: greyBluePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  email,
                  style: const TextStyle(
                    color: greyBluePrimary,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            FilledButton.icon(
              onPressed: () {},
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.all(10),
                elevation: 5,
                backgroundColor: orangePrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              icon: const Icon(
                Icons.add_rounded,
                color: Colors.white,
              ),
              label: const Text(
                "Tambahkan",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PassengerCard extends StatelessWidget {
  final int passengerNumber;

  const PassengerCard({required this.passengerNumber, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/icons/ic_smile.png'),
                  ),
                ),
                Text(
                  "Penumpang $passengerNumber",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 100),
                const Icon(Icons.keyboard_arrow_up),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: DropdownButtonFormField<String>(
                    onChanged: (newValue) {
                      // Handle the onChanged event to update the selected value
                    },
                    items: const [
                      DropdownMenuItem(value: 'NIK', child: Text('NIK')),
                      DropdownMenuItem(value: 'Paspor', child: Text('Paspor')),
                      DropdownMenuItem(value: 'SIM', child: Text('SIM')),
                    ],
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Jenis Identitas',
                      labelStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  flex: 6,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'No Identitas',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const Divider(height: 1),
            const TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Nama Lengkap',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Penumpang bayi tidak mendapat kursi sendiri. Penumpang dibawah 18 tahun dapat mengisi dengan nomor tanda pengenal lain atau tanggal lahir (ddmmyyyy)',
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
