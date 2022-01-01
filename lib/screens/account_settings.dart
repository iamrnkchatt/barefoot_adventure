import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: width * 0.2,
                      width: width * 0.2,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/picture2.jpg"),
                              fit: BoxFit.cover)),
                      child: null,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Account Settings",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: width * 0.05,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Update your usename and manage your email",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.04,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
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
                  hintText: "Username",
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
              SizedBox(height: width * 0.06),
              Container(
                height: width * 0.12,
                width: width,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.teal)),
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w500),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
