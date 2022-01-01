import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'PROFILE SETTINGS',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: width * 0.03,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Update your profile',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: width * 0.04),
                Row(
                  children: [
                    Container(
                      height: width * 0.2,
                      width: width * 0.2,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/picture2.jpg"),
                              fit: BoxFit.cover)),
                      child: null,
                    ),
                    SizedBox(width: width * 0.04),
                    Container(
                      height: width * 0.12,
                      width: width * 0.4,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.teal)),
                          onPressed: () {},
                          child: Text(
                            "New Picture",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.w500),
                          )),
                    )
                  ],
                ),
                SizedBox(height: width * 0.06),
                Container(
                  height: width * 0.5,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/picture2.jpg"),
                          fit: BoxFit.cover)),
                  child: null,
                ),
                SizedBox(height: width * 0.04),
                Container(
                  height: width * 0.12,
                  padding: EdgeInsets.only(left: width * 0.5),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal)),
                      onPressed: () {},
                      child: Text(
                        "New Picture",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(height: width * 0.08),
                TextFormField(
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.grey.shade500,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: width * 0.04, vertical: width * 0.01),
                    hintText: "Firstname",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: width * 0.04),
                TextFormField(
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.grey.shade500,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: width * 0.04, vertical: width * 0.01),
                    hintText: "Lastname",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: width * 0.04),
                TextFormField(
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.grey.shade500,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: width * 0.04, vertical: width * 0.01),
                    hintText: "Address",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: width * 0.04),
                TextFormField(
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.grey.shade500,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: width * 0.04, vertical: width * 0.01),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: width * 0.04),
                TextFormField(
                  minLines: 3,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.grey.shade500,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: width * 0.04, vertical: width * 0.01),
                    hintText: "Short Bio",
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: width * 0.06),
                Container(
                  height: width * 0.12,
                  // padding: EdgeInsets.only(left: width * 0.5),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal)),
                      onPressed: () {},
                      child: Text(
                        "Save Changes",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(height: width * 0.06),
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
