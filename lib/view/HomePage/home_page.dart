import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Colors%20and%20Fonts/colors.dart';

import '../../constants/Buttons/custom_buttons.dart';
import '../Gallery Sections/gallery_sections_view.dart';
import '../Gallery/gallery_list.dart';
import '../Gallery/gallery_list2.dart';
import '../Gallery/gallery_list3.dart';
import '../OnBoarding/on_boarding_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 60,
        destinations: [
          MaterialButton(
            onPressed: (){
              Get.to(() => HomePage(),
                  duration: Duration(milliseconds: 500),
                  transition: Transition.rightToLeft);
            },
            child: NavigationDestination(
              selectedIcon: Icon(Icons.home_outlined),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
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
            TitleText(),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle1(),
                SizedBox(
                  width: 234,
                ),
                SeeAllButton(
                  text: 'See all',
                  onTap: () {
                    Get.to(() => GallerySectionsView(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GalleryList(),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SectionTitle2(),
                SizedBox(
                  width: 208.2,
                ),
                SeeAllButton(
                  text: 'See all',
                  onTap: () {
                    Get.to(() => GallerySectionsView(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GalleryList2(),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SectionTitle3(),
                SizedBox(
                  width: 210,
                ),
                SeeAllButton(
                  text: 'See all',
                  onTap: () {
                    Get.to(() => GallerySectionsView(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                ),
              ],
            ),
            GalleryList3(),

          ],
        ),
      ),
    );
  }

  Widget TitleText() {
    return Center(
      child: Text(
        'What Would You Like To Order ?',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: PurpleColor,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget SectionTitle1() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Card(
            elevation: 10,
            child: Text(
              'Appliances',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: PurpleColor,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget SectionTitle2() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Card(
            elevation: 10,
            child: Text(
              'Smart Devices',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: PurpleColor,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget SectionTitle3() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Card(
            elevation: 10,
            child: Text(
              'Personal Stuff',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: PurpleColor,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  AppBar myAppBar() {
    return AppBar(
      elevation: 10,
      //automaticallyImplyLeading: false,
      backgroundColor: PurpleColor,
      leading: BackButton(
        onPressed: () {
          Get.to(() => OnBoardingView(),
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
