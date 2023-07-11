import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/core/utils/constant.dart';
import 'package:my_smart_avatar/src/features/auth/presentation/widgets/custom_text.dart';

import '../auth/presentation/widgets/custom_button.dart';
import '../face_recognition/face_recognition_screen.dart';

class ChoosePremiumCharacterScreen extends StatefulWidget {
  const ChoosePremiumCharacterScreen({super.key});

  @override
  State<ChoosePremiumCharacterScreen> createState() =>
      _ChoosePremiumCharacterScreenState();
}

class _ChoosePremiumCharacterScreenState
    extends State<ChoosePremiumCharacterScreen> {
  bool isContainer1Selected = true;
  bool isContainer2Selected = false;

  void selectContainer1() {
    setState(() {
      isContainer1Selected = true;
      isContainer2Selected = false;
    });
  }

  void selectContainer2() {
    setState(() {
      isContainer1Selected = false;
      isContainer2Selected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 44),
          child: Column(
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
                    child: Center(child: Image.asset('assets/icons/Icon.png')),
                  ),
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              CustomTitle(text: 'Create your Avatar'),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'We need this info to make your experience more relevant and exciting.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: TextColor,
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              GestureDetector(
                onTap: selectContainer1,
                child: Container(
                  width: 230,
                  height: 182,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: isContainer1Selected
                        ? Color(0xffF4E9AC)
                        : Color(0xffF9F9F9),
                    border: Border.all(
                      color: isContainer1Selected
                          ? Color(0xffF4E9AC)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Ellipse 2332.png'),
                      SizedBox(height: 10),
                      CustomSubTitle(text: 'Pre-made avatar'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14),
              GestureDetector(
                onTap: selectContainer2,
                child: Container(
                  width: 230,
                  height: 182,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: isContainer2Selected
                        ? Color(0xffF4E9AC)
                        : Color(0xffF9F9F9),
                    border: Border.all(
                      color: isContainer2Selected
                          ? Color(0xffF4E9AC)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/own avatar.png'),
                        SizedBox(height: 10),
                        CustomSubTitle(text: 'My own face avatar'),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                text: 'Next',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FaceRecognitionScreen(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
