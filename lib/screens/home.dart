import 'package:badges/badges.dart';
import 'package:barefoot_adventure/screens/explore_catagory_tour.dart';
import 'package:barefoot_adventure/screens/sign_up.dart';
import 'package:barefoot_adventure/widgets/carouselslider_image.dart';
import 'package:barefoot_adventure/widgets/countrycard.dart';
import 'package:barefoot_adventure/widgets/tourcard.dart';
import 'package:barefoot_adventure/widgets/travelcard.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi John Doe',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.grey, fontSize: width * 0.03),
            ),
            SizedBox(height: width * 0.01),
            Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
        // leadingWidth: 100,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignUp()));
            },
            child: Padding(
              padding: EdgeInsets.all(width * 0.04),
              child: Badge(
                badgeContent: const Text(' '),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/profile-pic.jpg',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: GestureDetector(
        // onTap: () => Focus.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              children: [
                TextField(
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    contentPadding: const EdgeInsets.all(3),
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search Place, Hotel, Tour etc.",
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.04,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TourCard(
                        ontap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const ExploreCatagoryTour()));
                        },
                        width: width,
                        image: "assets/images/mountain.jpg",
                        text1: "Mountain",
                        text2: "70 Places",
                      ),
                      TourCard(
                        ontap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const ExploreCatagoryTour()));
                        },
                        width: width,
                        image: "assets/images/beach.jpg",
                        text1: "Beach",
                        text2: "70 Places",
                      ),
                      TourCard(
                        ontap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const ExploreCatagoryTour()));
                        },
                        width: width,
                        image: "assets/images/forest.jpg",
                        text1: "Forest",
                        text2: "70 Places",
                      ),
                      TourCard(
                        ontap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const ExploreCatagoryTour()));
                        },
                        width: width,
                        image: "assets/images/landscape.jpg",
                        text1: "Landscape",
                        text2: "70 Places",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: width * 0.04,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'TODAY',
                    style:
                        TextStyle(color: Colors.black, fontSize: width * 0.035),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: width * 0.01),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Where are you going?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: width * 0.04,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CountryCard(
                          width: width,
                          image: "assets/images/africa.jpg",
                          text: "Africa"),
                      CountryCard(
                          width: width,
                          image: "assets/images/australia.jpg",
                          text: "Australia"),
                      CountryCard(
                          width: width,
                          image: "assets/images/maldives.jpg",
                          text: "Maldives"),
                      CountryCard(
                          width: width,
                          image: "assets/images/japan.jpg",
                          text: "Japan"),
                    ],
                  ),
                ),
                SizedBox(
                  height: width * 0.04,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'LATEST',
                    style:
                        TextStyle(color: Colors.black, fontSize: width * 0.035),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: width * 0.01),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Popular Destinations',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: width * 0.04,
                ),
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    CarouselSliderImage(
                        width: width,
                        image: "assets/images/popular-destination1.jpg",
                        text: "Highest Mountain in the world"),
                    CarouselSliderImage(
                        width: width,
                        image: "assets/images/popular-destination2.jpg",
                        text: "Middle of a Beautiful Lake Tour"),
                    CarouselSliderImage(
                        width: width,
                        image: "assets/images/popular-destination3.jpg",
                        text: "Charming Underwater Park"),
                    CarouselSliderImage(
                        width: width,
                        image: "assets/images/popular-destination4.jpg",
                        text: "Down the Beauty of the Island"),
                  ],
                  //Slider Container properties
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    height: 400,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                  ),
                ),
                SizedBox(height: width * 0.04),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    child: Image.asset('assets/images/banner.png'),
                  ),
                ),
                SizedBox(
                  height: width * 0.04,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'RECOMMENDED',
                    style:
                        TextStyle(color: Colors.black, fontSize: width * 0.035),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: width * 0.01),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'For You',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: width * 0.04,
                ),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  childAspectRatio: 1 / 2,
                  // padding: EdgeInsets.symmetric(
                  //     horizontal: width * 0.01, vertical: width * 0.01),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,

                  children: <Widget>[
                    TravelCard(
                        width: width,
                        image: "assets/images/recommended1.jpg",
                        text: "Underwater Tourism"),
                    TravelCard(
                        width: width,
                        image: "assets/images/recommended2.jpg",
                        text: "The Pinnacle of Courage"),
                    TravelCard(
                        width: width,
                        image: "assets/images/recommended3.jpg",
                        text: "Cliff Top Lodging with a Pool"),
                    TravelCard(
                        width: width,
                        image: "assets/images/recommended4.jpg",
                        text: "The Best Ocean Waves"),
                    TravelCard(
                        width: width,
                        image: "assets/images/recommended5.jpg",
                        text: "Night Culinary Tour"),
                    TravelCard(
                        width: width,
                        image: "assets/images/recommended6.jpg",
                        text: "Beautiful and Cool Inn"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
