import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/features/splash_screen/splash_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              scaffoldBackgroundColor: Color(0xffFFFFFF),
              fontFamily: 'Nunito',
              useMaterial3: true),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      //child: NavigationMenuScreen(),
      child: SplashScreen(),
    );
  }
}
