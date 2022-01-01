import 'package:badges/badges.dart';
import 'package:barefoot_adventure/screens/explore.dart';
import 'package:barefoot_adventure/screens/favorite.dart';
import 'package:barefoot_adventure/screens/home.dart';
import 'package:barefoot_adventure/screens/notification.dart';
import 'package:barefoot_adventure/screens/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _page = 0;
  final screens = [
    const Home(),
    const Favorite(),
    const Explore(),
    const NotificationScreen(),
    const Profile()
  ];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        color: Colors.teal,
        buttonBackgroundColor: Colors.teal,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
        index: 0,
        // index: 0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: width * 0.07,
            color: Colors.white,
          ),
          Icon(
            Icons.bookmark,
            size: width * 0.07,
            color: Colors.white,
          ),
          Icon(
            Icons.location_on,
            size: width * 0.07,
            color: Colors.white,
          ),
          Badge(
            badgeContent: const Text(' '),
            child: Icon(
              Icons.notifications,
              size: width * 0.07,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.person,
            size: width * 0.07,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
