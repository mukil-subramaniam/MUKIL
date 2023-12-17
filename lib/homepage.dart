import 'package:TutFinder/_profile.dart';
import 'package:TutFinder/about.dart';
import 'package:TutFinder/education.dart';
import 'package:TutFinder/indoorgames.dart';
import 'package:TutFinder/outdoorgames.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';

String? ans;

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  void display(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(
              child: ListTile(
                leading: Icon(Icons.info_outline),
                title: Text(
                  'About',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Get.to(AboutPage());
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: GridView.count(
          mainAxisSpacing: 12,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(EducationPage());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Icon(
                      Icons.cast_for_education_sharp,
                      size: 40,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Education',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(IndoorgamePage());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Icon(
                      Icons.games,
                      size: 40,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Indoor Games',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(OutdoorPage());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Icon(
                      Icons.sports,
                      size: 40,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Outdoor Games',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.blueAccent,
        index: 0,
        letIndexChange: (value) => true,
        items: const [
          Icon(Icons.book, semanticLabel: "Home"),
          Icon(Icons.person),
        ],
        onTap: (index) {
          if (index == 1) {
            Get.to(ProfilePage());
          }
        },
      ),
    );
  }
}
