import 'package:flutter/material.dart';

extension NavigationExtensions on BuildContext {
  void navigateToPage(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void navigateToReplacement(Widget page) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void navigateToAndRemoveUntil(Widget page) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      (route) => false,
    );
  }
  void pop(){
    Navigator.pop(this);
  }
}


