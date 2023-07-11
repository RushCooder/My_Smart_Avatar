import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/features/auth/presentation/widgets/custom_text.dart';

import '../../widgets/custom_userInfo.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(6)),
                        child:
                            Center(child: Image.asset('assets/icons/Icon.png')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100.h,
                  ),
                  CustomTitle(text: 'Settings'),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomUserInfoRow(
                label: 'Username',
                value: 'iqra_32',
              ),
              CustomUserInfoRow(
                label: 'Email',
                value: 'iqra.irshad33222@gmail.com',
              ),
              CustomUserInfoRow(
                label: 'Password',
                value: '********',
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 35,
                width: double.infinity,
                color: Color(0xffF3F3F3),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: CustomSubTitle(text: 'Avatar Setting'),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomUserInfoRow(
                label: 'Name',
                value: 'Alisa',
              ),
              CustomUserInfoRow(
                label: 'Edit Avatar',
                value: 'Edit',
              ),
              CustomUserInfoRow(
                label: 'Background Color',
                value: 'color',
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 35,
                width: double.infinity,
                color: Color(0xffF3F3F3),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: CustomSubTitle(text: 'Price Plan'),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomUserInfoRow(
                label: 'Premium',
                value: '\$100',
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomSubTitle(text: 'Logout')
            ],
          ),
        ),
      ),
    );
  }
}
