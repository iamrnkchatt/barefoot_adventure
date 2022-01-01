import 'package:barefoot_adventure/screens/travel_detail.dart';
import 'package:flutter/material.dart';

class ExploreCatagoryCard extends StatelessWidget {
  const ExploreCatagoryCard({
    Key? key,
    required this.width,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final double width;
  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const TravelDetail()));
      },
      child: SizedBox(
        child: Stack(
          children: [
            Container(
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                          fontSize: width * 0.05, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: width * 0.04),
                    RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.location_on_rounded,
                              size: width * 0.04,
                              color: Colors.teal,
                            ),
                          ),
                          TextSpan(
                              text: text2,
                              style: TextStyle(fontSize: width * 0.04)),
                        ],
                      ),
                    ),
                    SizedBox(height: width * 0.1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
