import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/HomePage/home_page.dart';

import '../../../constants/Colors and Fonts/colors.dart';
import '../../Appliances/Fridges/fridge_page.dart';
import 'gallery_sections_item.dart';

class GallerySectionsBody extends StatelessWidget {
  const GallerySectionsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 60,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home_outlined),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(
              Icons.favorite,
              color: PurpleColor,
            ),
            label: 'Favourit',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.category_outlined),
            icon: Icon(Icons.category_outlined),
            label: 'Categorys',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_box_rounded),
            icon: Icon(Icons.account_box_rounded),
            label: 'My Profile',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_cart_checkout_rounded),
            icon: Icon(Icons.shopping_cart_checkout_rounded),
            label: 'My Cart',
          ),
        ],
      ),
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => FridgePage(),
                          duration: Duration(milliseconds: 500),
                          transition: Transition.rightToLeft);
                    },
                    child: GallerySectionsItem(
                      image: 'assets/images/fridge.png',
                      Title: 'Fridges',
                    )),
                SizedBox(
                  width: 40,
                ),
                GallerySectionsItem(
                  image: 'assets/images/tv.png',
                  Title: 'TV & Screens',
                ),
              ],
            ),
            Row(
              children: [
                GallerySectionsItem(
                  image: 'assets/images/washing.png',
                  Title: 'Cloths Washers',
                ),
                SizedBox(
                  width: 40,
                ),
                GallerySectionsItem(
                  image: 'assets/images/oven.png',
                  Title: 'Kitchen Ovens',
                ),
              ],
            ),
            Row(
              children: [
                GallerySectionsItem(
                  image: 'assets/images/vaccum4.png',
                  Title: 'Vaccum Machines',
                ),
                SizedBox(
                  width: 40,
                ),
                GallerySectionsItem(
                  image: 'assets/images/blender1.png',
                  Title: 'Blenders',
                ),
              ],
            ),
            Row(
              children: [
                GallerySectionsItem(
                  image: 'assets/images/dishWasher.png',
                  Title: 'Dish Washer',
                ),
                SizedBox(
                  width: 40,
                ),
                GallerySectionsItem(
                  image: 'assets/images/phone1.png',
                  Title: 'Home Phones',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      elevation: 10,
      //automaticallyImplyLeading: false,
      backgroundColor: PurpleColor,
      leading: BackButton(
        onPressed: () {
          Get.to(() => HomePage(),
              duration: Duration(milliseconds: 500),
              transition: Transition.rightToLeft);
        },
        color: Colors.white,
      ),
      title: Center(
        child: Text(
          'Power Store',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
