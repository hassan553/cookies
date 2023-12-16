// import 'package:flutter/material.dart';
// import '../../../../core/utils/app_colors.dart';
// import '../../data/models/onboarding_model.dart';

// class OnBoardingView extends StatelessWidget {
//   const OnBoardingView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           _backgroundImages(),
//           PageView.builder(
//               itemCount: onBoardingData.length,
//               itemBuilder: (context, index) =>
//                   _onboardingBody(context, onBoardingData[index])),
//         ],
//       ),
//     );
//   }

//   Padding _onboardingBody(BuildContext context, OnBoardingModel model) {
//     return Padding(
//       padding: const EdgeInsetsDirectional.all(15.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _centerImage(model.imagePath),
//           _bodyTexts(context, model.title, model.subTitle),
//           const SizedBox(height: 30),
//           _bottomButtons(context)
//         ],
//       ),
//     );
//   }

//   Row _bottomButtons(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: CustomButton(
//               color: AppColors.primaryColor, function: () {}, title: 'sda'),
//         ),
//         const Spacer(),
//         Expanded(
//             child: ClipRRect(
//           borderRadius: BorderRadius.circular(30),
//           child: CustomButton(
//             function: () {},
//             title: 'Get Start',
//             color: AppColors.primaryColor,
//             textStyle: context.f21700?.copyWith(color: AppColors.white),
//           ),
//         )),
//       ],
//     );
//   }

//   Column _bodyTexts(BuildContext context, String title, String subTitle) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: context.f28800?.copyWith(color: AppColors.darkBlack),
//         ),
//         const SizedBox(height: 10),
//         Text(
//           subTitle,
//           style: context.f20700?.copyWith(color: AppColors.lightGrey),
//         ),
//       ],
//     );
//   }

//   Stack _centerImage(String image) {
//     return Stack(
//       alignment: Alignment.topCenter,
//       children: [
//         Image.asset(image, fit: BoxFit.fill),
//         Image.asset(ImagesPaths.dotPng, fit: BoxFit.fill),
//       ],
//     );
//   }

//   Column _backgroundImages() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Align(
//           alignment: Alignment.topRight,
//           child: Image.asset(ImagesPaths.topCirclePng),
//         ),
//         const SizedBox(height: 80),
//         Padding(
//           padding: const EdgeInsetsDirectional.only(start: 15),
//           child: Image.asset(ImagesPaths.nikePng),
//         ),
//       ],
//     );
//   }
// }
