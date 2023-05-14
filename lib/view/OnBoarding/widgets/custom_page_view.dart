import 'package:flutter/material.dart';
import 'package:power_store1/view/OnBoarding/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({required this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          title: 'POWER STORE',
          subTitle: 'Elegance',
          image: 'assets/images/appliances.png',
        ),
        PageViewItem(
          title: 'POWER STORE',
          subTitle: 'Magnificence',
          image: 'assets/images/electrical.png',
        ),
        PageViewItem(
          title: 'POWER STORE',
          subTitle: 'Luxury Choices',
          image: 'assets/images/micro.png',
        ),
      ],
    );
  }
}
