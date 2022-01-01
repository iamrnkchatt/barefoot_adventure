import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.04, vertical: width * 0.08),
        child: Column(
          children: [
            SizedBox(height: width * 0.1),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    color: Colors.grey.shade400, fontSize: width * 0.035),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: width * 0.01),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lets\'s Join Us',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: width * 0.1),
            TextField(
              style: TextStyle(
                fontSize: width * 0.038,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                contentPadding: EdgeInsets.all(width * 0.04),
                hintText: "Name",
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
            TextField(
              style: TextStyle(
                fontSize: width * 0.038,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                contentPadding: EdgeInsets.all(width * 0.04),
                hintText: "Email",
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
            TextField(
              obscureText: true,
              style: TextStyle(
                fontSize: width * 0.038,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                contentPadding: EdgeInsets.all(width * 0.04),
                hintText: "Password",
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
            TextField(
              obscureText: true,
              style: TextStyle(
                fontSize: width * 0.038,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                contentPadding: EdgeInsets.all(width * 0.04),
                hintText: "Confirm Password",
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
            Container(
              height: width * 0.12,
              width: width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: width * 0.04),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                ),
              ),
            ),
            SizedBox(height: width * 0.04),
            RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Already have an Account?",
                      style: TextStyle(
                          fontSize: width * 0.04, color: Colors.black)),
                  TextSpan(
                      text: " Sign In",
                      style: TextStyle(
                          fontSize: width * 0.04, color: Colors.teal)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
