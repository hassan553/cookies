import 'package:cookies/core/extension/navigation_extension.dart';
import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/functions/check_orientation.dart';
import 'package:cookies/core/utils/app_assets.dart';
import 'package:cookies/core/widgets/custom_button.dart';
import 'package:cookies/core/widgets/custom_text_button.dart';
import 'package:cookies/core/widgets/custom_text_field.dart';
import 'package:cookies/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                  child: Text('Sign Up',
                      style: context.f34600
                          ?.copyWith(color: AppColors.primaryColor)),
                ),
                SizedBox(height: 20.h),
                Image.asset(Assets.imagesCookies1,
                    width: 150.w, fit: BoxFit.fill),
                SizedBox(height: 5.h),
                CustomTextField(
                  hintText: 'Name',
                  hintStyle: context.f16500,
                  suffixIcon: Icon(
                      size: ScreenUtil().setWidth(20),
                      Icons.person,
                      color: AppColors.primaryColor),
                ),
                SizedBox(height: isPortrait(context) ? 10.h : 20.h),
                CustomTextField(
                  hintText: 'Email',
                  hintStyle: context.f16500,
                  suffixIcon: Icon(
                    Icons.check,
                    color: AppColors.primaryColor,
                    size: ScreenUtil().setWidth(20),
                  ),
                ),
                SizedBox(height: isPortrait(context) ? 10.h : 20.h),
                CustomTextField(
                  hintText: 'Password',
                  hintStyle: context.f16500,
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: AppColors.primaryColor,
                    size: ScreenUtil().setWidth(20),
                  ),
                ),
                SizedBox(height: isPortrait(context) ? 20.h : 40.h),
                CustomButton(
                    function: () {},
                    title: 'Sign Up',
                    color: AppColors.primaryColor,
                    textStyle: context.f16600),
                SizedBox(height: isPortrait(context) ? 20.h : 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account? ', style: context.f14700),
                    CustomTextButton(
                      onTap: () => context.navigateToPage(const LoginView()),
                      text: 'Sign In',
                      style: context.f14700
                          ?.copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
                SizedBox(height: isPortrait(context) ? 20.h : 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        color: AppColors.white,
                        height: 2,
                        width: ScreenUtil().screenWidth * .2),
                    SizedBox(width: 10.w),
                    Text('Or Register With ', style: context.f14700),
                    SizedBox(width: 10.w),
                    Container(
                        color: AppColors.white,
                        height: 2,
                        width: ScreenUtil().screenWidth * .2),
                  ],
                ),
                SizedBox(height: isPortrait(context) ? 20.h : 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Assets.imagesFacebook,
                        width: isPortrait(context) ? 50.w : 40.w,
                        fit: BoxFit.fill),
                    SizedBox(width: 30.w),
                    Image.asset(Assets.imagesGoogle,
                        width: isPortrait(context) ? 50.w : 40.w,
                        fit: BoxFit.fill),
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
