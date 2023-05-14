import 'package:flutter/material.dart';
import 'package:power_store1/view/splash/widgets/splash_body.dart';


class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SplashBody(),
    );
  }
}
