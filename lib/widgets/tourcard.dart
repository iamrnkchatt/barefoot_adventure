import 'package:barefoot_adventure/screens/explore_catagory_tour.dart';
import 'package:flutter/material.dart';

class TourCard extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final Function ontap;
  const TourCard({
    Key? key,
    required this.width,
    required this.image,
    required this.text1,
    required this.text2,
    required this.ontap,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap(),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: width * 0.35,
            height: width * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
                colorFilter: const ColorFilter.mode(
                    Color.fromRGBO(0, 0, 0, 0.5), BlendMode.darken),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: width * 0.01),
            child: Container(
              margin: EdgeInsets.only(
                  left: width * 0.04,
                  right: width * 0.04,
                  top: width * 0.04,
                  bottom: width * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                        fontSize: width * 0.045, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    text2,
                    style:
                        TextStyle(fontSize: width * 0.035, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
