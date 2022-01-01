import 'package:barefoot_adventure/screens/account_settings.dart';
import 'package:barefoot_adventure/screens/allow_notification_settings.dart';
import 'package:barefoot_adventure/screens/help.dart';
import 'package:barefoot_adventure/screens/privacy.dart';
import 'package:barefoot_adventure/screens/profile.dart';
import 'package:barefoot_adventure/screens/profile_settings.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                "ACCOUNT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.04,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: width * 0.04),
              SettingsTile1(
                width: width,
                text: "Profile Settings",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileSettings()));
                },
              ),
              SettingsTile1(
                width: width,
                text: "Account Settings",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AccountSettings()));
                },
              ),
              SettingsTile1(
                width: width,
                text: "Manage Password",
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => const MyGallery()));
                },
              ),
              SizedBox(height: width * 0.1),
              Text(
                "PUSH NOTIFICATIONS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.04,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: width * 0.04),
              SettingsTile1(
                width: width,
                text: "Allow Notification Settings",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AllowNotificationSettings()));
                },
              ),
              Container(
                height: width * 0.12,
                child: ListTile(
                  title: Text(
                    "Notifications",
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
                "Other Settings",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.04,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: width * 0.04),
              SettingsTile1(
                width: width,
                text: "Privacy",
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Privacy()));
                },
              ),
              SettingsTile1(
                width: width,
                text: "Help",
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Help()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsTile1 extends StatelessWidget {
  const SettingsTile1({
    Key? key,
    required this.width,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final double width;
  final String text;

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: width * 0.12,
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: width * 0.045,
                color: Colors.black),
          ),
          trailing: Text(
            ">",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: width * 0.05,
                color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
