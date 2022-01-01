import 'package:barefoot_adventure/screens/country_detail.dart';
import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  final String image;
  final String text;

  const CountryCard({
    Key? key,
    required this.width,
    required this.image,
    required this.text,
  }) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CountryDetail()));
      },
      child: Container(
        alignment: Alignment.center,
        width: width * 0.38,
        height: width * 0.17,
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
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: width * 0.045, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
