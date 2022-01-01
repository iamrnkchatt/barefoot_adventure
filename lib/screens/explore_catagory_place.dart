import 'package:barefoot_adventure/widgets/explore_catagory_card.dart';
import 'package:barefoot_adventure/widgets/explore_hotel_card.dart';
import 'package:flutter/material.dart';

class ExploreCatagoryPlace extends StatelessWidget {
  const ExploreCatagoryPlace({Key? key}) : super(key: key);

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
                        'HOTEL',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: width * 0.03,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Explore Hotels',
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
                    ExploreHotelCard(
                      width: width,
                      image: "assets/images/hotel-v1.jpeg",
                      text1: "National Hotel",
                    ),
                    ExploreHotelCard(
                      width: width,
                      image: "assets/images/hotel-v2.jpeg",
                      text1: "Natural Resort",
                    ),
                    ExploreHotelCard(
                      width: width,
                      image: "assets/images/hotel-v3.jpeg",
                      text1: "Classic Resort",
                    ),
                    ExploreHotelCard(
                      width: width,
                      image: "assets/images/hotel-v4.jpeg",
                      text1: "Hundred Hotel & Resort",
                    ),
                    ExploreHotelCard(
                      width: width,
                      image: "assets/images/hotel-v5.jpeg",
                      text1: "Brother Hotel",
                    ),
                    ExploreHotelCard(
                      width: width,
                      image: "assets/images/hotel-v6.jpeg",
                      text1: "Airport Hotel & Resort",
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
