import 'package:flutter/material.dart';
import 'package:TutFinder/splashscreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
