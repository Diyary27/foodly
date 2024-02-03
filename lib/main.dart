import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/main_screen.dart';
import 'package:get/get.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: kPrimary,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Foodly',
          theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: kPrimary,
            iconTheme: IconThemeData(
              color: kDark,
            ),
            textTheme: Typography.englishLike2018.apply(
              fontSizeFactor: 1.sp,
              bodyColor: kDark,
            ),
            primarySwatch: Colors.grey,
          ),
          home: MainScreen(),
        );
      },
    );
  }
}
