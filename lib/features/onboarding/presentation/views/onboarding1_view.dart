import 'package:cookies/core/extension/navigation_extension.dart';
import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/utils/app_colors.dart';
import 'package:cookies/core/widgets/custom_button.dart';
import 'package:cookies/core/widgets/custom_text_button.dart';
import 'package:cookies/features/auth/presentation/views/login_view.dart';
import 'package:cookies/features/onboarding/presentation/views/onboarding2_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';

class OnBoardingFirstView extends StatelessWidget {
  const OnBoardingFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(Assets.imagesOnboarding1),
                Padding(
                  padding: const EdgeInsetsDirectional.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: CustomTextButton(
                              text: 'Skip',
                              onTap: () => context
                                  .navigateToReplacement(const LoginView()),
                              style: context.f18600)),
                      SizedBox(height: 50.h),
                      Text('Cookies',
                          style: context.f34600
                              ?.copyWith(color: AppColors.primaryColor)),
                      SizedBox(height: 10.h),
                      Text('Fresh cookies from the oven to your home',
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
                            child: Text('2',
                                style: context.f16600
                                    ?.copyWith(color: AppColors.black)),
                          ),
                          SizedBox(width: 10.w),
                          CircleAvatar(
                            radius: 15,
                            child: Text('3',
                                style: context.f16600
                                    ?.copyWith(color: AppColors.black)),
                          )
                        ],
                      ),
                      SizedBox(height: 350.h),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: CustomButton(
                            color: AppColors.white,
                            radius: 30,
                            width: 150.w,
                            function: () => context
                                .navigateToPage(const OnBoardingSecondView()),
                            title: 'Next',
                            textStyle: context.f16600
                                ?.copyWith(color: AppColors.black)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
