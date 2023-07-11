import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/features/auth/presentation/widgets/custom_text.dart';

import '../../core/utils/constant.dart';
import '../auth/presentation/widgets/custom_button.dart';
import '../premade_avatar_screen/premade_home_screen.dart';
import '../premium_account/premium_account.dart';

class ChooseCharacterScreen extends StatefulWidget {
  const ChooseCharacterScreen({Key? key}) : super(key: key);

  @override
  State<ChooseCharacterScreen> createState() => _ChooseCharacterScreenState();
}

class _ChooseCharacterScreenState extends State<ChooseCharacterScreen> {
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

  void navigateToNextScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PremadeAvatarScreen(
          isContainer1Selected: isContainer1Selected,
          isContainer2Selected: isContainer2Selected,
        ),
      ),
    );
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
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Image.asset('assets/icons/Icon.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 44.h),
              CustomTitle(text: 'Create your Avatar'),
              SizedBox(height: 8.h),
              Text(
                'We need this info to make your experience more relevant and exciting.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: TextColor,
                ),
              ),
              SizedBox(height: 44.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PremadeAvatarScreen(
                                isContainer1Selected: true,
                                isContainer2Selected: true,
                              )));
                },
                //onTap: selectContainer1,
                child: Container(
                  width: 230,
                  height: 182,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: isContainer1Selected
                        ? const Color(0xffF4E9AC)
                        : const Color(0xffF9F9F9),
                    border: Border.all(
                      color: isContainer1Selected
                          ? const Color(0xffF4E9AC)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Ellipse 2332.png'),
                      const SizedBox(height: 10),
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
                        ? const Color(0xffF4E9AC)
                        : const Color(0xffF9F9F9),
                    border: Border.all(
                      color: isContainer2Selected
                          ? const Color(0xffF4E9AC)
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Image.asset('assets/icons/premium.png'),
                        ),
                        Image.asset('assets/icons/own avatar.png'),
                        const SizedBox(height: 10),
                        CustomSubTitle(text: 'My own face avatar'),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomButton(
                text: 'Continue',
                onPressed: () {
                  if (isContainer1Selected) {
                    navigateToNextScreen();
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PremiumAccountScreen(),
                    ));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
