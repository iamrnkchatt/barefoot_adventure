import 'package:barefoot_adventure/screens/travel_detail.dart';
import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  const TravelCard({
    Key? key,
    required this.width,
    required this.image,
    required this.text,
  }) : super(key: key);

  final double width;
  final String image;
  final String text;

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
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: width * 0.02,
                ),
                width: double.infinity,
                child: RichText(
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
                          text: "13050",
                          style: TextStyle(fontSize: width * 0.04)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: width * 0.5),
              Text(
                text,
                style: TextStyle(
                    fontSize: width * 0.06, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: width * 0.04),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.star,
                        size: width * 0.05,
                        color: Colors.teal,
                      ),
                    ),
                    TextSpan(
                        text: "  4.5",
                        style: TextStyle(fontSize: width * 0.04)),
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
