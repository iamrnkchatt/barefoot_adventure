import 'package:barefoot_adventure/screens/travel_detail.dart';
import 'package:barefoot_adventure/widgets/countrycard.dart';
import 'package:barefoot_adventure/widgets/favoritelist_tile.dart';
import 'package:barefoot_adventure/widgets/picture_preview_with_text.dart';
import 'package:barefoot_adventure/widgets/recommended_hotel_card.dart';
import 'package:barefoot_adventure/widgets/tourcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'explore_catagory_place.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(width * 0.04),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'EXPLORE',
                            style: TextStyle(
                                color: Colors.black, fontSize: width * 0.035),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: width * 0.01),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Explore the world',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: width * 0.06,
                                fontWeight: FontWeight.w800),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: width * 0.02),
                  Container(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PicturePreviewWithText(
                              height: height,
                              width: width,
                              image: "assets/images/mountain.jpeg",
                              text1: "Explore Mountain",
                              text2:
                                  "Explore Mountains together around the world"),
                          SizedBox(width: width * 0.04),
                          PicturePreviewWithText(
                              height: height,
                              width: width,
                              image: "assets/images/forest.jpeg",
                              text1: "Explore Forest",
                              text2:
                                  "Explore the Forest through various recreational activities"),
                          SizedBox(width: width * 0.04),
                          PicturePreviewWithText(
                              height: height,
                              width: width,
                              image: "assets/images/beach.jpg",
                              text1: "Explore Beach",
                              text2: "The best Beachs & islands to explore"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.02),
                  Container(
                    padding: EdgeInsets.all(width * 0.04),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Explore Too',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          TourCard(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ExploreCatagoryPlace()));
                            },
                            width: width,
                            image: "assets/images/explore-too1.jpg",
                            text1: "Hotels",
                            text2: "98 Hotels",
                          ),
                          TourCard(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ExploreCatagoryPlace()));
                            },
                            width: width,
                            image: "assets/images/explore-too2.jpg",
                            text1: "Restaurants",
                            text2: "210 Restaurants",
                          ),
                          TourCard(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ExploreCatagoryPlace()));
                            },
                            width: width,
                            image: "assets/images/explore-too3.jpg",
                            text1: "Tours",
                            text2: "1040 Tours",
                          ),
                          TourCard(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ExploreCatagoryPlace()));
                            },
                            width: width,
                            image: "assets/images/explore-too4.jpg",
                            text1: "Lodging",
                            text2: "140 Lodging",
                          ),
                          TourCard(
                            ontap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ExploreCatagoryPlace()));
                            },
                            width: width,
                            image: "assets/images/explore-too5.jpg",
                            text1: "Activities",
                            text2: "1400 Activities",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Container(
                    padding: EdgeInsets.all(width * 0.04),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Popular Destinations',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: SingleChildScrollView(
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
                  SizedBox(height: width * 0.04),
                  Container(
                    padding: EdgeInsets.all(width * 0.04),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Recommended Hotel',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          RecommendedHotelCard(
                            width: width,
                            height: height,
                            image: "assets/images/hotel-h1.jpeg",
                            text1: "South Africa",
                            text2: "National Hotel of Africa",
                            hotelPrice: "95",
                          ),
                          RecommendedHotelCard(
                            width: width,
                            height: height,
                            image: "assets/images/hotel-h2.jpeg",
                            text1: "Australia",
                            text2: "Little Airport Hotel",
                            hotelPrice: "105",
                          ),
                          RecommendedHotelCard(
                            width: width,
                            height: height,
                            image: "assets/images/hotel-h3.jpeg",
                            text1: "Maldivies",
                            text2: "Panorama Hotel",
                            hotelPrice: "97",
                          ),
                        ],
                      )),
                  SizedBox(height: width * 0.04),
                ],
              ),
            ),
          )),
    );
  }
}
