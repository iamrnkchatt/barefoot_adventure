import 'package:barefoot_adventure/screens/settings.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
                        'FAQ',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: width * 0.03,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Help Center',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: width * 0.04),
                TextField(
                  style: TextStyle(
                    fontSize: width * 0.038,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    contentPadding: const EdgeInsets.all(3),
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search Place, Hotel, Tour etc.",
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'TOP QUESTIONS',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: width * 0.04,
                    ),
                  ),
                ),
                SizedBox(height: width * 0.04),
                SettingsTile1(
                    width: width,
                    text: "About Account Information",
                    onTap: () {}),
                SettingsTile1(
                    width: width, text: "How to change Email?", onTap: () {}),
                SettingsTile1(
                    width: width,
                    text: "How to change Password?",
                    onTap: () {}),
                SizedBox(height: width * 0.04),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'FAQ QUESTIONS',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: width * 0.04,
                    ),
                  ),
                ),
                SizedBox(height: width * 0.04),
                SettingsTile1(
                    width: width,
                    text: "About Account Information",
                    onTap: () {}),
                SettingsTile1(
                    width: width, text: "How to change Email?", onTap: () {}),
                SettingsTile1(
                    width: width,
                    text: "How to change Password?",
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
