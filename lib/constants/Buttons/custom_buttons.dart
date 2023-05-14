import 'package:flutter/material.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({required this.text, this.onTap});
  final String? text;
  final  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 250,
        decoration: BoxDecoration(
          color: Color(0xFF821b5e),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}


class SeeAllButton extends StatelessWidget {
  const SeeAllButton({required this.text, this.onTap});
  final String? text;
  final  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Color(0xFF821b5e),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 25,
          width: 60,
          child: Center(
            child: Text(
              text!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

