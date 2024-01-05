// ignore_for_file: avoid_unnecessary_containers

import 'package:cookies/core/extension/navigation_extension.dart';
import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/utils/app_colors.dart';
import 'package:cookies/core/widgets/custom_button.dart';
import 'package:cookies/core/widgets/custom_text_button.dart';
import 'package:cookies/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';

class OnBoardingThreeView extends StatelessWidget {
  const OnBoardingThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: ScreenUtil().screenWidth,
          height: ScreenUtil().screenHeight,
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(Assets.imagesOnboarding2),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          Align(
                              alignment: AlignmentDirectional.topEnd,
                              child: CustomTextButton(
                                  text: 'Skip',
                                  onTap: () => context
                                      .navigateToReplacement(const LoginView()),
                                  style: context.f18600)),
                          SizedBox(height: 50.h),
                          Text('Fast Delivery',
                              style: context.f34600
                                  ?.copyWith(color: AppColors.primaryColor)),
                          SizedBox(height: 10.h),
                          Text('with our hero,\n get your cookies faster',
                              textAlign: TextAlign.center,
                              style: context.f14700),
                          SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: AppColors.primaryColor,
                                child: Text('1',
                                    style: context.f16600
                                        ?.copyWith(color: AppColors.black)),
                              ),
                              SizedBox(width: 10.w),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: AppColors.primaryColor,
                                child: Text('2',
                                    style: context.f16600
                                        ?.copyWith(color: AppColors.black)),
                              ),
                              SizedBox(width: 10.w),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: AppColors.primaryColor,
                                child: Text('3',
                                    style: context.f16600
                                        ?.copyWith(color: AppColors.black)),
                              )
                            ],
                          ),
                          SizedBox(height: 350.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomTextButton(
                                onTap: () => context.pop(),
                                text: 'Back',
                                style: context.f16600,
                              ),
                              SizedBox(width: 20.w),
                              CustomButton(
                                  color: AppColors.white,
                                  radius: 30,
                                  width: 150.w,
                                  function: () => context
                                      .navigateToReplacement(const LoginView()),
                                  title: 'Next',
                                  textStyle: context.f16600
                                      ?.copyWith(color: AppColors.black)),
                            ],
                          ),
                          SizedBox(height: 60.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
