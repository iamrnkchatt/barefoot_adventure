import 'package:flutter/material.dart';

class PicturePreview extends StatelessWidget {
  const PicturePreview({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
