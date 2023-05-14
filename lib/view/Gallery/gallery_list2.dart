import 'package:flutter/material.dart';

import '../../constants/Colors and Fonts/colors.dart';
import 'gallery_view.dart';


class GalleryList2 extends StatelessWidget {
  const GalleryList2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GalleryView(
            text: 'Phones',
            image: 'assets/images/mobile.png',
          ),
          GalleryView(
            text: 'Labtop',
            image: 'assets/images/labtop.png',
          ),
          GalleryView(
            text: 'Play Station',
            image: 'assets/images/play.png',
          ),




        ],
      ),
    );
  }
}
