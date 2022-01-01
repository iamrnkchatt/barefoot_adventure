import 'package:barefoot_adventure/widgets/explore_catagory_card.dart';
import 'package:flutter/material.dart';

class ExploreCatagoryTour extends StatefulWidget {
  const ExploreCatagoryTour({Key? key}) : super(key: key);

  @override
  _ExploreCatagoryTourState createState() => _ExploreCatagoryTourState();
}

class _ExploreCatagoryTourState extends State<ExploreCatagoryTour> {
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
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'MOUNTAIN',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: width * 0.03,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Explore Mountain',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: width * 0.04),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    ExploreCatagoryCard(
                      width: width,
                      image: "assets/images/category-mountain1.jpg",
                      text1: "Mountain Peak Red Sky",
                      text2: "Australia",
                    ),
                    ExploreCatagoryCard(
                      width: width,
                      image: "assets/images/category-mountain2.jpg",
                      text1: "Mountain of Cloud Tops",
                      text2: "Nepal",
                    ),
                    ExploreCatagoryCard(
                      width: width,
                      image: "assets/images/category-mountain3.jpg",
                      text1: "Mountain Valley Layered",
                      text2: "Vietnam",
                    ),
                    ExploreCatagoryCard(
                      width: width,
                      image: "assets/images/category-mountain4.jpg",
                      text1: "Twin Pine Mountain",
                      text2: "America",
                    ),
                    ExploreCatagoryCard(
                      width: width,
                      image: "assets/images/category-mountain5.jpg",
                      text1: "Bromo Crater Mountain",
                      text2: "Indonesia",
                    ),
                    ExploreCatagoryCard(
                      width: width,
                      image: "assets/images/category-mountain6.jpg",
                      text1: "Mountain Rock Peak",
                      text2: "Japan",
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
