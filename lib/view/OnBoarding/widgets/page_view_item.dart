import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({this.title, this.image, this.subTitle});

  final String? title;
  final String? image;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(width: 10,height: 30,),
          SizedBox(
              width: 300,
              height: 250,
              child: Image.asset(image!)),
          SizedBox(
            width: 10,
            height: 66,
          ),
          Text(
            subTitle!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );

  }
}
