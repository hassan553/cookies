// ignore_for_file: avoid_unnecessary_containers

import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/utils/app_colors.dart';
import 'package:cookies/core/widgets/custom_button.dart';
import 'package:cookies/core/widgets/custom_text_button.dart';
import 'package:cookies/features/onboarding/presentation/widgets/onboarding_background_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';

class OnBoardingThreeView extends StatelessWidget {
  const OnBoardingThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SizedBox(
                height: 600.h,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    CustomPaint(
                      size: Size(ScreenUtil().screenWidth, 700),
                      painter: RPSCustomPainter3(),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Image.asset(Assets.imagesOnboardingPerson,
                            fit: BoxFit.fill,
                            height: ScreenUtil().screenHeight * .6),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Text('Skip', style: context.f18600)),
                    SizedBox(height: 50.h),
                    Text('Fast Delivery',
                        style: context.f34600
                            ?.copyWith(color: AppColors.primaryColor)),
                    SizedBox(height: 10.h),
                    Text('with our hero, get your cookies faster',
                        textAlign: TextAlign.center, style: context.f14700),
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

                    SizedBox(height: 370.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextButton(
                          onTap: () {},
                          text: 'Back',
                          style: context.f16600,
                        ),
                        CustomButton(
                            color: AppColors.white,
                            radius: 30,
                            width: 150.w,
                            function: () {},
                            title: 'Next',
                            textStyle: context.f16600
                                ?.copyWith(color: AppColors.black)),
                      ],
                    ),
                    // SizedBox(height: 80.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
