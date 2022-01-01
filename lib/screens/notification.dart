import 'package:barefoot_adventure/widgets/notification_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.04, vertical: width * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '2 Min Ago',
                  style: TextStyle(
                      color: Colors.grey.shade500, fontSize: width * 0.04),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: width * 0.04),
                NotificationTile(
                  width: width,
                  icon: const Icon(
                    CupertinoIcons.tag,
                    color: Colors.white,
                  ),
                  text1: "Special offer - Up to 75%",
                  text2:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  badge: true,
                ),
                SizedBox(height: width * 0.04),
                Text(
                  'TODAY',
                  style: TextStyle(
                      color: Colors.grey.shade500, fontSize: width * 0.04),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: width * 0.04),
                NotificationTile(
                  width: width,
                  icon: const Icon(
                    CupertinoIcons.tag,
                    color: Colors.white,
                  ),
                  text1: "Get Flat 20% discount",
                  text2:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  badge: true,
                ),
                SizedBox(height: width * 0.04),
                NotificationTile(
                  width: width,
                  icon: const Icon(
                    CupertinoIcons.sun_haze,
                    color: Colors.white,
                  ),
                  text1: "Special Offer - Summer Sale",
                  text2:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  badge: true,
                ),
                SizedBox(height: width * 0.04),
                Text(
                  '3 DAYS AGO',
                  style: TextStyle(
                      color: Colors.grey.shade500, fontSize: width * 0.04),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: width * 0.04),
                NotificationTile(
                  width: width,
                  icon: const Icon(
                    CupertinoIcons.tag,
                    color: Colors.white,
                  ),
                  text1: "Mega Travel Sale",
                  text2:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  badge: false,
                ),
                SizedBox(height: width * 0.04),
                NotificationTile(
                  width: width,
                  icon: const Icon(
                    CupertinoIcons.bed_double,
                    color: Colors.white,
                  ),
                  text1: "Special Offer - Nature Hotel",
                  text2:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  badge: false,
                ),
                SizedBox(height: width * 0.04),
                NotificationTile(
                  width: width,
                  icon: const Icon(
                    CupertinoIcons.location,
                    color: Colors.white,
                  ),
                  text1: "Africa only - Get all Activities",
                  text2:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  badge: false,
                ),
                SizedBox(height: width * 0.04),
              ],
            ),
          ),
        ));
  }
}
