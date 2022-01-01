import 'package:barefoot_adventure/screens/travel_detail.dart';
import 'package:barefoot_adventure/widgets/favoritelist_tile.dart';
import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

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
                            'FAVORITE',
                            style: TextStyle(
                                color: Colors.black, fontSize: width * 0.035),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        SizedBox(height: width * 0.01),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'That you save',
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
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _favouriteTypes(
                                  width, "Tour", Colors.teal, Colors.white),
                              SizedBox(width: width * 0.04),
                              _favouriteTypes(width, "Destination",
                                  Colors.grey.shade300, Colors.grey),
                              SizedBox(width: width * 0.04),
                              _favouriteTypes(width, "Hotel",
                                  Colors.grey.shade300, Colors.grey),
                              SizedBox(width: width * 0.04),
                              _favouriteTypes(width, "Activities",
                                  Colors.grey.shade300, Colors.grey),
                              SizedBox(width: width * 0.04),
                              _favouriteTypes(width, "Restaurant",
                                  Colors.grey.shade300, Colors.grey),
                              SizedBox(width: width * 0.04),
                              _favouriteTypes(width, "Lodging",
                                  Colors.grey.shade300, Colors.grey),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: width * 0.1),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                    child: Column(
                      children: [
                        FavoriteListTile(
                            ontap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TravelDetail())),
                            height: height,
                            width: width,
                            image: "assets/images/favorite1.jpeg",
                            text: "Highest Mountain in the world"),
                        SizedBox(height: width * 0.04),
                        FavoriteListTile(
                            ontap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TravelDetail())),
                            height: height,
                            width: width,
                            image: "assets/images/favorite2.jpeg",
                            text: "Middle of Beautiful Lake Tour"),
                        SizedBox(height: width * 0.04),
                        FavoriteListTile(
                            ontap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TravelDetail())),
                            height: height,
                            width: width,
                            image: "assets/images/favorite3.jpeg",
                            text: "Charming Underwater Park"),
                        SizedBox(height: width * 0.04),
                        FavoriteListTile(
                            ontap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TravelDetail())),
                            height: height,
                            width: width,
                            image: "assets/images/favorite4.jpeg",
                            text: "Charming Sunset Dots"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  Container _favouriteTypes(
      double width, String text, Color bgcolor, Color textColor) {
    return Container(
      height: width * 0.08,
      width: width * 0.35,
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: width * 0.04),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
