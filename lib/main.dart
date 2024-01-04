import 'package:cookies/features/auth/presentation/views/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/app_theme.dart';
import 'features/auth/presentation/views/main_view.dart';

void main() {
 runApp(DevicePreview(
    builder: (_) {
      return const MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => MaterialApp(
        title: 'Cookies',
        theme: AppTheme.light(),
        home: const MainView(),
      ),
    );
  }
}