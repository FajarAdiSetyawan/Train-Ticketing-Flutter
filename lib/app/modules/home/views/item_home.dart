import 'package:flutter/material.dart';
import 'package:train_ticketing/app/constant/colors.dart';
import 'package:get/get.dart';
import 'package:train_ticketing/app/routes/app_pages.dart';

class CardMyTicketHome extends StatelessWidget {
  CardMyTicketHome({
    super.key,
    required this.day,
    required this.dayColor,
    required this.train,
    required this.destination,
  });

  String day = "";
  Color dayColor;
  String train = "";
  String destination = "";

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(
        left: 15,
        top: 10,
        bottom: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.SELECT_SEAT),
              style: ElevatedButton.styleFrom(
                shadowColor: dayColor,
                elevation: 10,
                backgroundColor: dayColor,
                minimumSize: Size.zero, // Set this
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 10.0,
                ), // and this
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                day,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  train,
                  style: const TextStyle(
                    color: greyBluePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  destination,
                  style: const TextStyle(
                    color: greyBluePrimary,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
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
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ItemCardNewsHome extends StatelessWidget {
  ItemCardNewsHome({
    super.key,
    required this.title,
    required this.message,
    required this.titleColor,
    required this.backgroundTitle,
    required this.src,
  });

  String title = "";
  String message = "";
  Color titleColor;
  Color backgroundTitle;
  String src = "";

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: backgroundTitle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 3,
                      left: 20,
                      right: 20,
                      bottom: 3,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        color: titleColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  message,
                  style: const TextStyle(
                    color: greyBluePrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 140,
              child: Image.asset(src),
            ),
          ),
        ],
      ),
    );
  }
}
