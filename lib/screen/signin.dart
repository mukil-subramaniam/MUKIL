import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:TutFinder/homepage.dart';
import 'package:TutFinder/screen/reusable.dart';

TextEditingController _passwordTextcontroller = TextEditingController();
TextEditingController _emailTextcontroller = TextEditingController();

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFCB2B93),
              Color(0xFF9546C4),
              Color(0xFF5E61F4),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    20, 80, 20, 20), // Adjusted image padding
                child: logoWidget("assets/signinlogo.png"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: reusableWidget(
                  "Enter Username",
                  Icons.person_2_outlined,
                  false,
                  _emailTextcontroller,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: reusableWidget(
                  "Enter Password",
                  Icons.lock,
                  true,
                  _passwordTextcontroller,
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: signInSignUpButton(context, true, () {
                  Get.to(Homepage());
                }),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
