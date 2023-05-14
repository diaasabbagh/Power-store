import 'package:flutter/material.dart';

import '../Colors and Fonts/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final int? maxLines;

  const CustomTextField({
    required this.inputType,
    this.suffexIcon,
    this.onSaved,
    this.onChanged,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: TextFormField(
        keyboardType: inputType,
        onChanged: onChanged,
        onSaved: onSaved,
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
            borderSide: BorderSide(
              color: PurpleColor,
            ),
          ),
        ),
      ),
    );
  }
}
