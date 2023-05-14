import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const CustomTextStyle({
    Key? key,
    required this.text,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
