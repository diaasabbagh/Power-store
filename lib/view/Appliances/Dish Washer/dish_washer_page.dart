import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/view/Gallery%20Sections/gallery_sections_view.dart';

import '../../../constants/Colors and Fonts/colors.dart';
import '../../HomePage/home_page.dart';
import 'dish_washer_list.dart';

class DishWasherPage extends StatelessWidget {
  const DishWasherPage({Key? key}) : super(key: key);

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
                DishWasherList(
                  image: 'assets/images/dish1.png',
                  Title: ' غسالة صحون الحافظ',
                  Discription: 'حرارة عالية',
                ),
                SizedBox(width: 5,),
                DishWasherList(
                  image: 'assets/images/dish2.png',
                  Title: 'غسالة صحون LG',
                  Discription: 'غسيل و تنشيف بنفس الوقت',
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                DishWasherList(
                  image: 'assets/images/dish3.png',
                  Title: ' غسالة SAMSUNG',
                  Discription: 'طبقتان Stainless Steel',
                ),
                SizedBox(width: 5,),
                DishWasherList(
                  image: 'assets/images/dish4.png',
                  Title: 'غسالة Star Away',
                  Discription: 'مقاومة للصدأ',
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
