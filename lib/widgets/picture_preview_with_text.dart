import 'package:flutter/material.dart';

class PicturePreviewWithText extends StatelessWidget {
  const PicturePreviewWithText({
    Key? key,
    required this.height,
    required this.width,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final double height;
  final double width;
  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height * 0.45,
        width: width * 0.6,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.redAccent,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                text1,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.06),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: width * 0.04),
              Text(
                text2,
                style: TextStyle(color: Colors.white, fontSize: width * 0.035),
              ),
              SizedBox(height: width * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
