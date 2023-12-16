import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/utils/app_colors.dart';
import 'package:cookies/core/widgets/custom_button.dart';
import 'package:cookies/features/onboarding/presentation/widgets/onboarding_background_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Text('Skip', style: context.f18600)),
              SizedBox(height: 50.h),
              Text('Cookies',
                  style:
                      context.f34600?.copyWith(color: AppColors.primaryColor)),
              SizedBox(height: 10.h),
              Text('Fresh cookies from the oven to your home',
                  textAlign: TextAlign.center, style: context.f18600),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 15,
                    child: Text('1',
                        style:
                            context.f18600?.copyWith(color: AppColors.black)),
                  ),
                  const SizedBox(width: 5),
                  CircleAvatar(
                    radius: 15,
                    child: Text('1',
                        style:
                            context.f18600?.copyWith(color: AppColors.black)),
                  ),
                  const SizedBox(width: 5),
                  CircleAvatar(
                    radius: 15,
                    child: Text('1',
                        style:
                            context.f18600?.copyWith(color: AppColors.black)),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Image.asset(Assets.imagesCookies1,
                  fit: BoxFit.fill, width: 150.w),
              SizedBox(height: 100.h),
              CustomButton(
                  color: AppColors.white,
                  radius: 30,
                  width: 150.w,
                  function: () {},
                  title: 'Next',
                  textStyle: context.f18600?.copyWith(color: AppColors.black)),
              SizedBox(height: 80.h),
            ],
          ),
        ),
      ),
    );
  }
}
//     currentPageIndex = (currentPageIndex + 1) % pages.length;
/*
    CircularProgressIndicator(
            value: currentPageIndex / (pages.length - 1),
          ),
          */
