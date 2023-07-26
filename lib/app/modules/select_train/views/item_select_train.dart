import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:train_ticketing/app/constant/colors.dart';

class ItemListTrain extends StatelessWidget {
  ItemListTrain({
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
    required this.seat,
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
  int seat = 0;
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
                  seat >= 20 ? "Tersedia" : "Sisa $seat",
                  style: TextStyle(
                    color: seat >= 20 ? Colors.black : Colors.red,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                FloatingActionButton.small(
                  onPressed: () {},
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
