import 'package:barefoot_adventure/screens/account_settings.dart';
import 'package:barefoot_adventure/screens/profile.dart';
import 'package:barefoot_adventure/screens/profile_settings.dart';
import 'package:flutter/material.dart';

class AllowNotificationSettings extends StatefulWidget {
  const AllowNotificationSettings({Key? key}) : super(key: key);

  @override
  State<AllowNotificationSettings> createState() =>
      _AllowNotificationSettingsState();
}

class _AllowNotificationSettingsState extends State<AllowNotificationSettings> {
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
                "EMAIL NOTIFICATIONS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.04,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: width * 0.04),
              Container(
                height: width * 0.12,
                child: ListTile(
                  title: Text(
                    "Account Activity",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Colors.black),
                  ),
                  trailing: Switch(
                    activeColor: Colors.teal,
                    inactiveTrackColor: Colors.grey,
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val;
                        print("object : $status");
                      });
                    },
                  ),
                ),
              ),
              Container(
                height: width * 0.12,
                child: ListTile(
                  title: Text(
                    "Recommended for you",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Colors.black),
                  ),
                  trailing: Switch(
                    activeColor: Colors.teal,
                    inactiveTrackColor: Colors.grey,
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val;
                        print("object : $status");
                      });
                    },
                  ),
                ),
              ),
              Container(
                height: width * 0.12,
                child: ListTile(
                  title: Text(
                    "Travel News",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Colors.black),
                  ),
                  trailing: Switch(
                    activeColor: Colors.teal,
                    inactiveTrackColor: Colors.grey,
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val;
                        print("object : $status");
                      });
                    },
                  ),
                ),
              ),
              Container(
                height: width * 0.12,
                child: ListTile(
                  title: Text(
                    "Marketing Preference",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Colors.black),
                  ),
                  trailing: Switch(
                    activeColor: Colors.teal,
                    inactiveTrackColor: Colors.grey,
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val;
                        print("object : $status");
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: width * 0.1),
              Text(
                "APP NOTIFICATIONS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.04,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: width * 0.04),
              Container(
                height: width * 0.12,
                child: ListTile(
                  title: Text(
                    "App Filter Update",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Colors.black),
                  ),
                  trailing: Switch(
                    activeColor: Colors.teal,
                    inactiveTrackColor: Colors.grey,
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val;
                        print("object : $status");
                      });
                    },
                  ),
                ),
              ),
              Container(
                height: width * 0.12,
                child: ListTile(
                  title: Text(
                    "Update Automatically",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Colors.black),
                  ),
                  trailing: Switch(
                    activeColor: Colors.teal,
                    inactiveTrackColor: Colors.grey,
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val;
                        print("object : $status");
                      });
                    },
                  ),
                ),
              ),
              Container(
                height: width * 0.12,
                child: ListTile(
                  title: Text(
                    "Vibrate for Notifications",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Colors.black),
                  ),
                  trailing: Switch(
                    activeColor: Colors.teal,
                    inactiveTrackColor: Colors.grey,
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val;
                        print("object : $status");
                      });
                    },
                  ),
                ),
              ),
              Container(
                height: width * 0.12,
                child: ListTile(
                  title: Text(
                    "Favourite Products",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.045,
                        color: Colors.black),
                  ),
                  trailing: Switch(
                    activeColor: Colors.teal,
                    inactiveTrackColor: Colors.grey,
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val;
                        print("object : $status");
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: width * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
