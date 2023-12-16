import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onTap;
  final String? text;
  final TextStyle? style;
  const CustomTextButton({super.key,this.onTap,this.style,this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(text??'', style: style),
    );
  }
}
