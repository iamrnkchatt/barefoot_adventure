import 'package:flutter/material.dart';

class MyGallery extends StatefulWidget {
  const MyGallery({Key? key}) : super(key: key);

  @override
  _MyGalleryState createState() => _MyGalleryState();
}

class _MyGalleryState extends State<MyGallery> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.teal),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'PHOTO',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: width * 0.03,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'My Gallery',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: width * 0.04),
                GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    MyGalleryCard(
                      width: width,
                      image: "assets/images/category-mountain1.jpg",
                    ),
                    MyGalleryCard(
                      width: width,
                      image: "assets/images/category-mountain2.jpg",
                    ),
                    MyGalleryCard(
                      width: width,
                      image: "assets/images/category-mountain3.jpg",
                    ),
                    MyGalleryCard(
                      width: width,
                      image: "assets/images/category-mountain4.jpg",
                    ),
                    MyGalleryCard(
                      width: width,
                      image: "assets/images/category-mountain5.jpg",
                    ),
                    MyGalleryCard(
                      width: width,
                      image: "assets/images/category-mountain6.jpg",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyGalleryCard extends StatelessWidget {
  const MyGalleryCard({
    Key? key,
    required this.width,
    required this.image,
  }) : super(key: key);

  final double width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    "",
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: width * 0.04),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "", style: TextStyle(fontSize: width * 0.04)),
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
    );
  }
}
