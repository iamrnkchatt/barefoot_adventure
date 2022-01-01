import 'package:barefoot_adventure/screens/travel_detail.dart';
import 'package:flutter/material.dart';

class ExploreHotelCard extends StatelessWidget {
  const ExploreHotelCard({
    Key? key,
    required this.width,
    required this.image,
    required this.text1,
  }) : super(key: key);

  final double width;
  final String image;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const TravelDetail()));
      },
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: width * 0.02),
                width: double.infinity,
                child: RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.location_on,
                          size: width * 0.04,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                          text: "4.5",
                          style: TextStyle(fontSize: width * 0.04)),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        TextSpan(
                            text: "\$99",
                            style: TextStyle(
                                fontSize: width * 0.06, color: Colors.teal)),
                        TextSpan(
                            text: " /Night",
                            style: TextStyle(fontSize: width * 0.04)),
                      ],
                    ),
                  ),
                  SizedBox(height: width * 0.08),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
