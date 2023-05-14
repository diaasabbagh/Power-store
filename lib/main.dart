import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:power_store1/view/splash/splash_view.dart';


void main() {
  runApp(DahabStore());
}

class DahabStore extends StatelessWidget {
  DahabStore({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.purple, // Set the accent color
      ),
    );
  }
}
