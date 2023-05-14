import 'package:flutter/material.dart';
import '../../../constants/Colors and Fonts/colors.dart';
import '../../../constants/TextFeild/custom_text_field.dart';



class LoginItem extends StatelessWidget {
  const LoginItem({required this.text , this.inputType , this.maxLines});
  final String text;
  final TextInputType? inputType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: PurpleColor,
            height: 1.5625,
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        CustomTextField(
          maxLines: maxLines,
          inputType: inputType,
        ),
      ],
    );
  }
}
