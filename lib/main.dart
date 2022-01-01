import 'package:barefoot_adventure/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barefoot Adventures',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme
            .copyWith(secondary: Colors.black87, primary: Colors.black),
        textTheme: theme.textTheme.copyWith(
          headline1: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
          headline2: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          subtitle1: const TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
          subtitle2: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
          headline3: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          bodyText1: const TextStyle(
              color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400),
          bodyText2: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
