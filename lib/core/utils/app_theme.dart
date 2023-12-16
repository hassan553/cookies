import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static const String _fontFamily = 'Montserrat';
  static ThemeData light() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.lightGrey,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.lightGrey,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            overflow: TextOverflow.ellipsis,
            fontFamily: _fontFamily),
      ),
      textTheme: TextTheme(
        displayMedium: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            fontFamily: _fontFamily),
        displayLarge: TextStyle(
            fontSize: 34.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            fontFamily: _fontFamily),
        displaySmall: TextStyle(
            fontSize: 28.sp,
            fontWeight: FontWeight.w800,
            color: AppColors.white,
            fontFamily: _fontFamily),
        labelLarge: TextStyle(
            fontSize: 26.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
            fontFamily: _fontFamily),
        labelMedium: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            fontFamily: _fontFamily),
        labelSmall: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
            fontFamily: _fontFamily),
        titleLarge: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            fontFamily: _fontFamily),
        titleMedium: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            fontFamily: _fontFamily),
        titleSmall: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            fontFamily: _fontFamily),
        bodyLarge: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
            fontFamily: _fontFamily),
        bodyMedium: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
            fontFamily: _fontFamily),
        bodySmall: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
            fontFamily: _fontFamily),
      ),
    );
  }
}
