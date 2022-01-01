import 'package:flutter/material.dart';

class FavoriteListTile extends StatelessWidget {
  const FavoriteListTile({
    Key? key,
    required this.height,
    required this.width,
    required this.image,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  final double height;
  final double width;
  final String text;
  final String image;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap(),
      child: Container(
        height: height * 0.2,
        child: Row(
          children: [
            Expanded(
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
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w800),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: width * 0.02),
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
                                text: "Province No 1, Nepal",
                                style: TextStyle(
                                    fontSize: width * 0.04,
                                    color: Colors.grey)),
                          ],
                        ),
                      ),
                      SizedBox(height: width * 0.04),
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
    );
  }
}
