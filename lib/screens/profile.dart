import 'package:barefoot_adventure/screens/help.dart';
import 'package:barefoot_adventure/screens/my_gallery.dart';
import 'package:barefoot_adventure/screens/notification.dart';
import 'package:barefoot_adventure/screens/privacy.dart';
import 'package:barefoot_adventure/screens/profile_settings.dart';
import 'package:barefoot_adventure/screens/settings.dart';
import 'package:barefoot_adventure/widgets/explore_catagory_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Container(
                      height: width * 0.7,
                      width: width,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80),
                          ),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/bg-profile.jpeg"),
                              fit: BoxFit.cover)),
                      child: null),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                      minLeadingWidth: 0.0,
                      horizontalTitleGap: 0.0,
                      leading: Container(
                          height: width * 0.17,
                          width: width * 0.17,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/category-mountain1.jpg"),
                                  fit: BoxFit.cover)),
                          child: null),
                      title: Text(
                        "Brezee Tomsk",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.055,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Container(
                        width: double.infinity,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.location_on,
                                  size: width * 0.04,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: "Province No 1, Nepal",
                                  style: TextStyle(
                                      fontSize: width * 0.04,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProfileSettings()));
                        },
                        child: Container(
                          height: width * 0.12,
                          width: width * 0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange),
                          child: const Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                      ))
                ],
              ),
            ],
          ),
          SizedBox(height: width * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "35",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.05,
                        color: Colors.black),
                  ),
                  Text(
                    "Trips",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.05,
                        color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "90",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.05,
                        color: Colors.black),
                  ),
                  Text(
                    "Favorites",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.05,
                        color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "110",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.05,
                        color: Colors.black),
                  ),
                  Text(
                    "Photos",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.05,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: width * 0.08),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Text(
              'My Trip History',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: width * 0.055,
                  fontWeight: FontWeight.w800),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: width * 0.04),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              children: [
                TripHistoryCard(
                  width: width,
                  image: "assets/images/mountain.jpeg",
                  text1: "Mountains",
                  text2: "Japan",
                ),
                TripHistoryCard(
                  width: width,
                  image: "assets/images/beach.jpg",
                  text1: "Beach",
                  text2: "New York",
                ),
              ],
            ),
          ),
          SizedBox(height: width * 0.04),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                child: Image.asset('assets/images/banner.png'),
              ),
            ),
          ),
          SizedBox(height: width * 0.08),
          SettingsTile(
            width: width,
            icon: Icons.photo_album,
            text: "My Gallery",
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MyGallery()));
            },
          ),
          SettingsTile(
            width: width,
            icon: Icons.notifications,
            text: "Notification",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationScreen()));
            },
          ),
          SettingsTile(
            width: width,
            icon: CupertinoIcons.globe,
            text: "Language",
            onTap: () {},
          ),
          SettingsTile(
            width: width,
            icon: Icons.settings,
            text: "Settings",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsScreen()));
            },
          ),
          SizedBox(height: width * 0.04),
          SettingsTile(
            width: width,
            icon: CupertinoIcons.lock,
            text: "Privacy",
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Privacy()));
            },
          ),
          SettingsTile(
            width: width,
            icon: Icons.help_outline,
            text: "Help",
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Help()));
            },
          ),
          SettingsTile(
            width: width,
            icon: CupertinoIcons.info,
            text: "About Us",
            onTap: () {},
          ),
          SettingsTile(
            width: width,
            icon: Icons.logout,
            text: "Logout",
            onTap: () {},
          ),
          SizedBox(height: width * 0.1),
        ],
      ),
    ));
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    Key? key,
    required this.width,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final double width;
  final String text;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: width * 0.12,
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.orange,
          ),
          title: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: width * 0.04,
                color: Colors.black),
          ),
          trailing: Text(
            ">",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: width * 0.05,
                color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class TripHistoryCard extends StatelessWidget {
  const TripHistoryCard({
    Key? key,
    required this.width,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final double width;
  final String text1;
  final String text2;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        height: width * 0.55,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
              colorFilter: const ColorFilter.mode(
                  Color.fromRGBO(0, 0, 0, 0.5), BlendMode.darken),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            color: Colors.redAccent,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      fontSize: width * 0.05, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: width * 0.02),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.location_on_rounded,
                          size: width * 0.04,
                          color: Colors.teal,
                        ),
                      ),
                      TextSpan(
                          text: text2,
                          style: TextStyle(fontSize: width * 0.04)),
                    ],
                  ),
                ),
                SizedBox(height: width * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
