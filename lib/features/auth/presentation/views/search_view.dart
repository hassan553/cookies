import 'package:cookies/core/extension/text_theme_extension.dart';
import 'package:cookies/core/utils/app_colors.dart';
import 'package:cookies/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(15.0),
      child: Column(
        children: [
          const SizedBox(height: 80),
          CustomTextField(
            fillColor: AppColors.offWhite,
            hintText: 'Search....',
            hintStyle: context.f16700,
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.white,
              size: ScreenUtil().setWidth(30),
            ),
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return SizedBox(
                      height: 120.h,
                      child: Container(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 20),
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
                              child: Image.asset(Assets.imagesCookies4,
                                  width: 130.w, height: 90.h, fit: BoxFit.fill),
                            ),
                            SizedBox(width: 15.w),
                            Expanded(
                                child: Text('Double\nChocolate',
                                    style: context.f20700)),
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
                      ));
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 20);
                },
                itemCount: 100),
          ),
        ],
      ),
    );
  }
}
