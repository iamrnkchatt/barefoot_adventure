import 'package:barefoot_adventure/screens/account_settings.dart';
import 'package:barefoot_adventure/screens/allow_notification_settings.dart';
import 'package:barefoot_adventure/screens/profile.dart';
import 'package:barefoot_adventure/screens/profile_settings.dart';
import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    var status = true;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.teal),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Privacy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.06,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: width * 0.04),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, unde velit fuga fugit suscipit quos, veritatis quae incidunt quas numquam corporis harum amet voluptatem est illum blanditiis nesciunt! Dolor modi aperiam odio eligendi, saepe libero non soluta aut exercitationem adipisci eum, voluptates. Consectetur labore quisquam eligendi ratione, consequatur ipsa culpa.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: width * 0.04,
                    color: Colors.grey),
              ),
              SizedBox(height: width * 0.04),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, et explicabo aliquam consequuntur eius eaque assumenda tempore nostrum obcaecati atque.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: width * 0.04,
                    color: Colors.grey),
              ),
              SizedBox(height: width * 0.04),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque, totam!",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: width * 0.04,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
