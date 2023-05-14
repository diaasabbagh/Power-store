import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants/Buttons/custom_buttons.dart';
import '../../../constants/ClickableImage/clickable_image.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../HomePage/home_page.dart';
import '../../OnBoarding/on_boarding_view.dart';
import 'login_item.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         Container(
           width: 450,
           height: 35,
           color: PurpleColor,
         ),
          Row(
            children: [
              SizedBox(
                height: 60,
              ),
              IconButton(
                onPressed: () {
                  Get.to(() => OnBoardingView(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);
                },
                icon: Icon(
                  Icons.home,
                  color: Color(0xFF821b5e),
                ),
              ),
              SizedBox(
                width: 55,
              ),
              Text(
                'Sign In Your Account',
                style: TextStyle(
                  color: PurpleColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(height: 50),
          LoginItem(
            text: '     Enter Your Email : ',
          ),
          SizedBox(height: 60),
          LoginItem(
            text: '     Enter Your Password : ',
          ),
          SizedBox(height: 50),
          CustomGeneralButton(
              onTap: () {
              // fetchData();
                Get.to(
                  () => HomePage(),
                  transition: Transition.rightToLeft,
                  duration: Duration(milliseconds: 500),
               );
              },
              text: 'Sign In'),
          SizedBox(height: 80),
          Text(
            'Complete With Google',
            style: TextStyle(
              color: PurpleColor,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ClickableImage(
            onTap: () {
              launch('https://www.google.com');
            },
          ),

        ],
      ),
    );
  }


  // Future<Map<String, dynamic>> fetchData() async {
  //   var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  //   if (response.statusCode == 200) {
  //     // If the server did return a 200 OK response, parse the JSON
  //     print(response.body);
  //     return jsonDecode(response.body);
  //   } else {
  //     // If the server did not return a 200 OK response, throw an error.
  //     throw Exception('Failed to load data');
  //   }
 // }


}
