import 'package:TutFinder/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.to(Homepage());
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.mode_night))],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/edu.png',
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Vijay',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                'Vijay12@gmail.com',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
