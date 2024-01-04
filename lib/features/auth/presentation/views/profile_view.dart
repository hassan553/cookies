import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_text_field.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 60.r,
                backgroundImage:
                    const AssetImage(Assets.imagesOnboardingPerson),
              ),
            ),
            SizedBox(height: 20.h),
            CustomTextField(
              fillColor: AppColors.offWhite,
              labelText: 'Name',
              hintText: 'Hassan Marzouk',
              hintStyle: context.f16700,
              prefixIcon: Icon(
                Icons.person,
                color: AppColors.white,
                size: ScreenUtil().setWidth(30),
              ),
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              fillColor: AppColors.offWhite,
              labelText: 'Email',
              hintText: 'hassan@gmail.com',
              hintStyle: context.f16700,
              prefixIcon: Icon(
                Icons.person,
                color: AppColors.white,
                size: ScreenUtil().setWidth(30),
              ),
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              fillColor: AppColors.offWhite,
              labelText: 'Phone',
              hintText: '010032032097',
              hintStyle: context.f16700,
              prefixIcon: Icon(
                Icons.person,
                color: AppColors.white,
                size: ScreenUtil().setWidth(30),
              ),
            ),
            SizedBox(height: 10.h),
            CustomTextField(
              fillColor: AppColors.offWhite,
              labelText: 'Address',
              hintText: 'Assiut',
              hintStyle: context.f16700,
              prefixIcon: Icon(
                Icons.home,
                color: AppColors.white,
                size: ScreenUtil().setWidth(30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
