import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CarouselSliderImage extends StatelessWidget {
  const CarouselSliderImage({
    Key? key,
    required this.text,
    required this.image,
    required this.width,
  }) : super(key: key);

  final double width;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                      // horizontal: width * 0.02,
                      vertical: width * 0.04),
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
                            text: "Province No 1, Nepal",
                            style: TextStyle(fontSize: width * 0.04)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: width * 0.2),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: width * 0.07, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: width * 0.04),
                Row(
                  children: [
                    RatingBar.builder(
                      itemSize: width * 0.06,
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      // itemPadding: EdgeInsets.symmetric(
                      //     horizontal: width * 0.01),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.teal,
                        size: width * 0.04,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(width: width * 0.02),
                    Text("4.5", style: TextStyle(fontSize: width * 0.04)),
                  ],
                ),
                SizedBox(height: width * 0.04),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$959',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.06),
                      ),
                      TextSpan(
                          text: ' /30 Days',
                          style: TextStyle(fontSize: width * 0.035))
                    ],
                  ),
                ),
                SizedBox(height: width * 0.04),
                Container(
                  height: width * 0.1,
                  padding: EdgeInsets.only(right: width * 0.5),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add to Plan'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
