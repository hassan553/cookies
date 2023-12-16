import 'package:flutter/material.dart';

isPortrait(context) {
  final orientation = MediaQuery.of(context).orientation;
  return orientation == Orientation.portrait;
}
