import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/features/auth/presentation/widgets/custom_button.dart';

import '../home_screen/presentation/screens/navigation_menu/navigation_menu_screen.dart';

class FaceRecognitionScreen extends StatelessWidget {
  const FaceRecognitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Image.asset(
                'assets/icons/Component 2.png',
                height: 300,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Scan your face to create your custom 3D avatar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              CustomButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NavigationMenuScreen(),
                  ));
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
