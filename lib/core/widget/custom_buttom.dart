import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  const CustomButon(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      this.fontSize});
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ??
              BorderRadius.circular(
                16,
              ),
        ),
        backgroundColor: backgroundColor,
      ),
      onPressed: () {},
      child: Text(
        text,
        style: Style.textStyle18.copyWith(
          color: textColor,
          fontWeight: FontWeight.w900,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
