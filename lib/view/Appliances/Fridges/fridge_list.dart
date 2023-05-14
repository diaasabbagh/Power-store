import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';

class FridgeList extends StatelessWidget {
  const FridgeList(
      {required this.image, required this.Title, required this.Discription});
  final String image;
  final String Title;
  final String Discription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 7,
        shadowColor: PurpleColor,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: PurpleColor,
              ),
            ),
            Container(
              height: 175,
              width: 175,
              child: Image.asset(image),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                Title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: PurpleColor,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              Discription,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: PurpleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
