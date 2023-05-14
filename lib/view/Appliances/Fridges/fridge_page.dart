import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Gallery%20Sections/gallery_sections_view.dart';

import '../../../constants/Colors and Fonts/colors.dart';
import '../../HomePage/home_page.dart';
import 'fridge_list.dart';

class FridgePage extends StatelessWidget {
  const FridgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 60,
        destinations: [
          MaterialButton(
            onPressed: () {
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
            Row(
              children: [
                FridgeList(
                  image: 'assets/images/fridge1.png',
                  Title: 'براد الحافظ',
                  Discription: 'تبريد هوائي',
                ),
                SizedBox(width: 5,),
                FridgeList(
                  image: 'assets/images/fridge3.png',
                  Title: 'Star Away برادات',
                  Discription: 'تبريد مائي',
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                FridgeList(
                  image: 'assets/images/fridge4.png',
                  Title: 'Fridge',
                  Discription: 'Hellooooo',
                ),
                SizedBox(width: 5,),
                FridgeList(
                  image: 'assets/images/fridge2.png',
                  Title: 'Heloo',
                  Discription: 'Hellooooo',
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
          Get.to(() => GallerySectionsView(),
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
