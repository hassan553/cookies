import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/utils/app_assets.dart';
import 'package:cookies/core/widgets/custom_button.dart';
import 'package:cookies/core/widgets/custom_text_button.dart';
import 'package:cookies/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: OrientationBuilder(
        builder: (context, orientation) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.all(20),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text('Sign In',
                      style: context.f34600
                          ?.copyWith(color: AppColors.primaryColor)),
                ),
                SizedBox(height: 20.h),
                Image.asset(Assets.imagesCookies1,
                    width: 150.w, fit: BoxFit.fill),
                SizedBox(height: 5.h),
                CustomTextField(
                  hintText: 'Email',
                  hintStyle: context.f16500,
                  suffixIcon: Icon(
                      size: ScreenUtil().setWidth(20),
                      Icons.check,
                      color: AppColors.primaryColor),
                ),
                SizedBox(height: 10.h),
                CustomTextField(
                  hintText: 'Password',
                  hintStyle: context.f16500,
                  suffixIcon: Icon(
                      size: ScreenUtil().setWidth(20),
                      Icons.visibility_off,
                      color: AppColors.primaryColor),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: AppColors.primaryColor,
                        checkColor: AppColors.black),
                    SizedBox(width: 4.h),
                    Text('Remember Me', style: context.f16600),
                    const Spacer(),
                    CustomTextButton(onTap: () {}, text: 'Forget Password?'),
                  ],
                ),
                SizedBox(height: 15.h),
                CustomButton(
                    function: () {},
                    title: 'Sign In',
                    color: AppColors.primaryColor,
                    textStyle: context.f16600),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account? ', style: context.f14700),
                    CustomTextButton(
                      onTap: () {},
                      text: 'Sign Up',
                      style: context.f14700
                          ?.copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        color: AppColors.white,
                        height: 2,
                        width: ScreenUtil().screenWidth * .2),
                    SizedBox(width: 10.w),
                    Text('Or Login With ', style: context.f14700),
                    SizedBox(width: 10.w),
                    Container(
                        color: AppColors.white,
                        height: 2,
                        width: ScreenUtil().screenWidth * .2),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Assets.imagesFacebook),
                    SizedBox(width: 30.w),
                    Image.asset(Assets.imagesGoogle),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
