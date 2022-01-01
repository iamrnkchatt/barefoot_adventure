import 'package:barefoot_adventure/screens/explore_catagory_tour.dart';
import 'package:barefoot_adventure/widgets/picture_preview.dart';
import 'package:barefoot_adventure/widgets/tourcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TravelDetail extends StatefulWidget {
  const TravelDetail({Key? key}) : super(key: key);

  @override
  _TravelDetailState createState() => _TravelDetailState();
}

class _TravelDetailState extends State<TravelDetail> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height / 2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/travel-details.jpg"), // <-- BACKGROUND IMAGE
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(80),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.02, vertical: width * 0.02),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child:
                            const Icon(Icons.arrow_back, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(2),
                          primary: Colors.teal, // <-- Button color
                          onPrimary: Colors.white, // <-- Splash color
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.bookmark, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),

                          primary: Colors.teal, // <-- Button color
                          onPrimary: Colors.teal, // <-- Splash color
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: width * 0.04),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RichText(
                      textAlign: TextAlign.start,
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
                                color: Colors.grey,
                                fontSize: width * 0.04,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: width * 0.02),
                    Text(
                      'Highest Mountain in the world',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: width * 0.02),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            itemSize: width * 0.06,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.teal,
                              size: 14,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Text(
                          '4.5',
                          style: TextStyle(
                              color: Colors.grey, fontSize: width * 0.04),
                        ),
                        SizedBox(width: width * 0.04),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('All Reviews'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal, // background
                            onPrimary: Colors.white, // foreground
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: width * 0.02),
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
                    SizedBox(
                      height: width * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          width: width * 0.1,
                          height: width * 0.1,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/kareena.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        Container(
                          width: width * 0.1,
                          height: width * 0.1,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/katrina.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        Container(
                          width: width * 0.1,
                          height: width * 0.1,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('assets/images/chitrangada.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Text(
                          'John Doe and 4,5K reviewed this',
                          style: TextStyle(
                            fontSize: width * 0.035,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: width * 0.04),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci itaque autem, vitae fugiat eveniet. Eos consequuntur soluta, consectetur aspernatur, hic iusto aliquid repudiandae veritatis deleniti provident explicabo modi ipsum!\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam dolores, cumque ullam',
                      style: TextStyle(
                          color: Colors.black87, fontSize: width * 0.035),
                    ),
                    SizedBox(height: width * 0.04),
                    Text(
                      'Pictures',
                      style: TextStyle(
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.02,
                    ),
                    GridView.count(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      primary: false,
                      childAspectRatio: 1 / 2,
                      padding: const EdgeInsets.all(5),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: const <Widget>[
                        PicturePreview(image: "assets/images/picture1.jpg"),
                        PicturePreview(image: "assets/images/picture2.jpg"),
                        PicturePreview(image: "assets/images/picture3.jpg"),
                        PicturePreview(image: "assets/images/picture4.jpg"),
                      ],
                    ),
                    SizedBox(height: width * 0.04),
                    Text(
                      'Related Destinations',
                      style: TextStyle(
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    SizedBox(height: width * 0.02),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
