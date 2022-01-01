import 'package:barefoot_adventure/screens/explore_catagory_place.dart';
import 'package:barefoot_adventure/widgets/picture_preview.dart';
import 'package:barefoot_adventure/widgets/tourcard.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CountryDetail extends StatefulWidget {
  const CountryDetail({Key? key}) : super(key: key);

  @override
  _CountryDetailState createState() => _CountryDetailState();
}

class _CountryDetailState extends State<CountryDetail> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'EXPLORE',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: width * 0.03,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'South Africa',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(height: width * 0.04),
                    CarouselSlider(
                      items: const [
                        PicturePreview(
                            image: "assets/images/explore-africa1.jpg"),
                        PicturePreview(
                            image: "assets/images/explore-africa2.jpg"),
                        PicturePreview(
                            image: "assets/images/explore-africa3.jpg"),
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
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\$959',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.06,
                                      color: Colors.teal),
                                ),
                                TextSpan(
                                  text: ' /30 Days',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: width * 0.035),
                                )
                              ],
                            ),
                          ),
                          RichText(
                            textAlign: TextAlign.end,
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.favorite,
                                    size: width * 0.04,
                                    color: Colors.teal,
                                  ),
                                ),
                                TextSpan(
                                  text: "70K",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: width * 0.04,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: width * 0.02),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisic elit. Expedita fuga illo quam qui placeat incidunt quidem, magnam placeat qui.',
                      style: TextStyle(
                          color: Colors.black87, fontSize: width * 0.035),
                    ),
                    SizedBox(height: width * 0.04),
                    Container(
                      height: width * 0.1,
                      width: width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Book Now',
                          style: TextStyle(fontSize: width * 0.04),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal, // background
                          onPrimary: Colors.white, // foreground
                        ),
                      ),
                    ),
                    SizedBox(height: width * 0.04),
                    Text(
                      'Explore Too',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: width * 0.04),
                    SingleChildScrollView(
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
