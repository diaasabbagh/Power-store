import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Appliances/Fridges/fridge_page.dart';

import '../../constants/Colors and Fonts/colors.dart';
import '../Appliances/Dish Washer/dish_washer_page.dart';
import 'gallery_view.dart';


class GalleryList extends StatelessWidget {
  const GalleryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              Get.to(() => FridgePage(),
                  duration: Duration(milliseconds: 500),
                  transition: Transition.rightToLeft);
            },
            child: GalleryView(
              text: 'Fridges',
              image: 'assets/images/fridge4.png',
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(() => DishWasherPage(),
                  duration: Duration(milliseconds: 500),
                  transition: Transition.rightToLeft);
            },
            child: GalleryView(
              text: 'Dish Washer',
              image: 'assets/images/dish2.png',
            ),
          ),
          GalleryView(
            text: 'TV',
            image: 'assets/images/tv1.png',
          ),
          GalleryView(
            text: 'Vaccum',
            image: 'assets/images/vaccum3.png',
          ),
          GalleryView(
            text: 'Home Phone',
            image: 'assets/images/phone2.png',
          ),
          GalleryView(
            text: 'Dish Washer',
            image: 'assets/images/dishWasher.png',
          ),
          GalleryView(
            text: 'Ovens',
            image: 'assets/images/oven4.png',
          ),
        ],
      ),
    );
  }
}
