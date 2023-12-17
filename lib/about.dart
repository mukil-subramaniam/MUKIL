import 'package:TutFinder/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back(result: Homepage());
          },
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'About',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Divider(
                height: 4,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '''TutFinder is an easy to use app that helps you to find the perfect tuition center. Its main focus is on location-based search for tuition centers, making it very convenient. The app aims to connect students, parents, and tutors, providing easy access to details of various tuition centers and helping you choose the best one. With TutFinder, searching for a tuition center has never been easier.''',
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.grey,
                  wordSpacing: 3,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
