import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/utils/app_assets.dart';
import 'package:cookies/core/utils/app_colors.dart';
import 'package:cookies/core/widgets/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35.r,
                backgroundImage:
                    const AssetImage(Assets.imagesOnboardingPerson),
              ),
              SizedBox(width: 10.w),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Hassan  ',
                      style: context.f14700?.copyWith(color: AppColors.white)),
                  Text('Eygpt  ',
                      style: context.f14400
                          ?.copyWith(color: AppColors.white.withOpacity(.7))),
                ],
              ),
              const Spacer(),
              SizedBox(
                  height: 120.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Container(
                      height: 90.h,
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
                  ])),
            ],
          ),
          SizedBox(height: 30.h),
          Text('Featured',
              style: context.f18600?.copyWith(color: AppColors.white)),
          SizedBox(height: 10.h),
          SizedBox(
            height: 170.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(width: 20.w),
              itemBuilder: (context, index) => const CookiesWidget(),
              itemCount: 100,
            ),
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Offers',
                  style: context.f20700?.copyWith(color: AppColors.white)),
              CustomTextButton(
                  onTap: () {},
                  text: 'See All',
                  style:
                      context.f16600?.copyWith(color: AppColors.primaryColor)),
            ],
          ),
          SizedBox(height: 20.h),
          SizedBox(
              height: 120.h,
              child: Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: AppColors.offWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(45),
                      topRight: Radius.circular(10)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.red,
                      child: Image.asset(Assets.imagesCookies4,
                          width: 130.w, height: 90.h, fit: BoxFit.fill),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                        child:
                            Text('Double\nChocolate', style: context.f20700)),
                    SizedBox(width: 5.w),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('55',
                            style: context.f16600?.copyWith(
                                color: AppColors.darkBlack,
                                decoration: TextDecoration.underline)),
                        SizedBox(height: 5.h),
                        Text('44\$', style: context.f20700),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class CookiesWidget extends StatelessWidget {
  const CookiesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        height: 130.h,
        width: 150.w,
        alignment: Alignment.bottomCenter,
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 10),
        decoration: const BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(45),
              topRight: Radius.circular(10)),
        ),
        child: Text('    10\nProducts  ', style: context.f16600),
      ),
      Positioned(
        top: 0,
        child: Image.asset(
          Assets.imagesCookies5,
          height: 90.h,
          width: 100.w,
          fit: BoxFit.fill,
        ),
      ),
    ]);
  }
}
