import 'package:flutter/material.dart';

import '../../constants/Colors and Fonts/colors.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({required this.text, required this.image });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(19),
        child: Container(
          height: 170,
          width: 170,
          color: Colors.grey[350],
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 18,
                      color: PurpleColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
