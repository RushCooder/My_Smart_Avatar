import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/features/auth/presentation/widgets/custom_button.dart';

import '../auth/presentation/widgets/custom_text.dart';
import '../home_screen/presentation/screens/navigation_menu/navigation_menu_screen.dart';

class PremadeAvatarScreen extends StatefulWidget {
  final bool isContainer1Selected;
  final bool isContainer2Selected;

  const PremadeAvatarScreen({
    Key? key,
    required this.isContainer1Selected,
    required this.isContainer2Selected,
  }) : super(key: key);
  @override
  _PremadeAvatarScreenState createState() => _PremadeAvatarScreenState();
}

class _PremadeAvatarScreenState extends State<PremadeAvatarScreen> {
  String? selectedImagePath;
  @override
  void initState() {
    super.initState();
    // Set the initial selected image path
    selectedImagePath = 'assets/icons/avatar1 (1).png';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
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
                    SizedBox(
                      width: 100.h,
                    ),
                    CustomTitle(text: 'Choose Avatar'),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              selectedImagePath != null
                  ? Image.asset(
                      selectedImagePath!,
                      height: 300,
                      width: 300,
                    ) // Display selected image
                  : SizedBox(), // Placeholder if no image is selected
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedImagePath =
                              'assets/icons/avatar1 (1).png'; // Update selected image path
                        });
                      },
                      child: Image.asset('assets/icons/avatar1 (1).png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedImagePath =
                              'assets/images/onboard1.png'; // Update selected image path
                        });
                      },
                      child: Image.asset('assets/images/onboard1.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedImagePath =
                              'assets/images/onboard2.png'; // Update selected image path
                        });
                      },
                      child: Image.asset('assets/images/onboard2.png'),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 130),
                child: CustomButton(
                  text: 'Next',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NavigationMenuScreen(),
                    ));
                  },
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
