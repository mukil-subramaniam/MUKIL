import 'package:flutter/material.dart';
import 'package:TutFinder/splashscreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(Loginscreen());
}

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
