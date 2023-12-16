import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle? get displayLarge => textTheme.displayLarge;

  TextStyle? get displayMedium => textTheme.displayMedium;

  TextStyle? get displaySmall => textTheme.displaySmall;

  TextStyle? get labelLarge => textTheme.labelLarge;

  TextStyle? get labelMedium => textTheme.labelMedium;

  TextStyle? get labelSmall => textTheme.labelSmall;

  TextStyle? get titleLarge => textTheme.titleLarge;

  TextStyle? get titleMedium => textTheme.titleMedium;

  TextStyle? get titleSmall => textTheme.titleSmall;

  TextStyle? get bodyLarge => textTheme.bodyLarge;

  TextStyle? get bodyMedium => textTheme.bodyMedium;

  TextStyle? get bodySmall => textTheme.bodySmall;

  TextStyle? get f34600 => textTheme.displayLarge;

  TextStyle? get f30600 => textTheme.displayMedium;

  TextStyle? get f28800 => textTheme.displaySmall;

  TextStyle? get f26500 => textTheme.labelLarge;

  TextStyle? get f25700 => textTheme.labelMedium;

  TextStyle? get f22600 =>
      textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get f22500 => textTheme.labelSmall;

  TextStyle? get f21700 => textTheme.titleLarge?.copyWith(fontSize: 21.sp);
  TextStyle? get f20700 => textTheme.titleLarge;
  TextStyle? get f20500 =>
      textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500);
  TextStyle? get f20400 =>
      textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400);

  TextStyle? get f18600 => textTheme.titleMedium;
  TextStyle? get f16700 => textTheme.titleSmall;
  TextStyle? get f16500 =>
      textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500);
  TextStyle? get f16600 =>
      textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600);
  TextStyle? get f16400 =>
      textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w400);

  TextStyle? get f15700 =>
      textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700);
  TextStyle? get f15600 =>
      textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600);
  TextStyle? get f15400 => textTheme.bodyLarge;
  TextStyle? get f15300 =>
      textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w300);

  TextStyle? get f14700 =>
      textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700);
  TextStyle? get f14400 => textTheme.bodyMedium;

  TextStyle? get f12700 =>
      textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700);
  TextStyle? get f12500 =>
      textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500);
  TextStyle? get f12400 => textTheme.bodySmall;

  TextStyle? get f10400 => textTheme.bodySmall?.copyWith(fontSize: 10);
  TextStyle? get f10300 =>
      textTheme.bodySmall?.copyWith(fontSize: 10, fontWeight: FontWeight.w300);
  TextStyle? get f10600 =>
      textTheme.bodySmall?.copyWith(fontSize: 10, fontWeight: FontWeight.w600);
}
