import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cookies/features/auth/presentation/views/home_view.dart';
import 'package:cookies/features/auth/presentation/views/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import 'search_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _controller = NotchBottomBarController(index: 0);
  List<Widget> screens = [
    const HomeView(),
    const SearchView(),
    const ProfileView()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: screens[currentIndex],
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchColor: AppColors.primaryColor,
        color: AppColors.black,
        itemLabelStyle: TextStyle(color: AppColors.white, fontSize: 10.sp),
        bottomBarItems: [
          bottomBarItem('Home', CupertinoIcons.home),
          bottomBarItem('Search', CupertinoIcons.search),
          bottomBarItem('Account', CupertinoIcons.person_alt),
        ],
        notchBottomBarController: _controller,
        onTap: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }

  BottomBarItem bottomBarItem(String label, IconData icon) {
    return BottomBarItem(
      inActiveItem: Icon(
        icon,
        color: AppColors.white,
      ),
      activeItem: Icon(
        icon,
        color: AppColors.white,
      ),
      itemLabel: label,
    );
  }
}
