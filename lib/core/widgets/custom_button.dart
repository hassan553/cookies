import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function()? function;
  final Color? color;
  final TextStyle? textStyle;
  const CustomButton({
    super.key,
    required this.function,
    required this.title,
    this.color,
    this.textStyle,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 50,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      onPressed: function,
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
