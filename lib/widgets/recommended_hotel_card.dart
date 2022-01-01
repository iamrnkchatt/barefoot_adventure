import 'package:flutter/material.dart';

class RecommendedHotelCard extends StatelessWidget {
  const RecommendedHotelCard({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
    required this.text1,
    required this.text2,
    required this.hotelPrice,
  }) : super(key: key);

  final double width;
  final double height;
  final String image;
  final String text1;
  final String text2;
  final String hotelPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Row(
        children: [
          GestureDetector(
            // onTap: () => ontap(),
            child: Container(
              height: height * 0.4,
              width: width * 0.65,
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  image,
                                ),
                                fit: BoxFit.cover,
                                isAntiAlias: true)),
                      )),
                  Expanded(
                      child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: width * 0.01),
                        RichText(
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
                                  text: text1,
                                  style: TextStyle(
                                      fontSize: width * 0.04,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                        SizedBox(height: width * 0.02),
                        Text(
                          text2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: width * 0.02),
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '\$$hotelPrice',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.06,
                                    color: Colors.teal),
                              ),
                              TextSpan(
                                  text: ' /Night',
                                  style: TextStyle(
                                      fontSize: width * 0.035,
                                      color: Colors.grey))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
