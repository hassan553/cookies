import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/utils/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../t.dart';

class DetailsCookiesView extends StatelessWidget {
  const DetailsCookiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.imagesDetailsBack))),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.white,
                    child: const Center(child: Icon(Icons.arrow_back_ios)),
                  ),
                  const Spacer(),
                  Container(
                    color: Colors.red,
                    child: SizedBox(
                      height: 130.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 100.h,
                            alignment: Alignment.center,
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 10),
                                Text('5',
                                    style: context.f16600
                                        ?.copyWith(color: AppColors.black)),
                                SizedBox(height: 2.h),
                                Text('Products',
                                    style: context.f14700
                                        ?.copyWith(color: AppColors.black)),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5,
                            child: CircleAvatar(
                              radius: 25.r,
                              backgroundColor: AppColors.black,
                              child: Icon(
                                CupertinoIcons.cart_badge_plus,
                                color: AppColors.white,
                                size: ScreenUtil().setWidth(30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Text('Double\nChocolate', style: context.f20700),
              SizedBox(height: 8.h),
              Container(
                padding: const EdgeInsetsDirectional.all(15),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white, width: 1),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(Assets.imagesBook),
                    const SizedBox(width: 10),
                    Text('Information', style: context.f12500),
                  ],
                ),
              ),
              SizedBox(height: 140.h),
              Text('Select Quantity', style: context.f20700),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    ));
  }
}
