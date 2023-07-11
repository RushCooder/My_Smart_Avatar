import 'package:flutter/material.dart';
import 'package:my_smart_avatar/src/core/utils/constant.dart';
import 'package:my_smart_avatar/src/features/auth/presentation/widgets/custom_text.dart';

import '../../widgets/custom_navbar.dart';
import '../chat_screen/chat_screen.dart';
import '../navigation_item/eyes_screen.dart';
import '../navigation_item/face_screen.dart';
import '../navigation_item/glasses_screen.dart';
import '../navigation_item/hair_screen.dart';
import '../navigation_item/lips_screen.dart';
import '../navigation_item/nose_screen.dart';
import '../navigation_item/outfit_screen.dart';
import '../navigation_item/skinTone_screen.dart';

class NavigationMenuScreen extends StatefulWidget {
  @override
  State<NavigationMenuScreen> createState() => _NavigationMenuScreenState();
}

class _NavigationMenuScreenState extends State<NavigationMenuScreen> {
  int selectedIconIndex = 0;

  void toggleOverlayVisibility(int index) {
    setState(() {
      if (selectedIconIndex == index) {
        selectedIconIndex = 0;
      } else {
        selectedIconIndex = index;
      }
    });
  }

  Widget _buildSelectedScreen() {
    if (selectedIconIndex == 0) {
      return FaceScreen();
    } else if (selectedIconIndex == 1) {
      return SkinToneScreen();
    } else if (selectedIconIndex == 2) {
      return HairScreen();
    } else if (selectedIconIndex == 3) {
      return GlassesScreen();
    } else if (selectedIconIndex == 4) {
      return LipsScreen();
    } else if (selectedIconIndex == 5) {
      return OutfitScreen();
    } else if (selectedIconIndex == 6) {
      return NoseScreen();
    } else if (selectedIconIndex == 7) {
      return EyesScreen();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Row(
                      children: [
                        Image.asset('assets/icons/back.png'),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ChatScreen(),
                            ));
                          },
                          child: Container(
                            height: 36,
                            width: 56,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: CustomSubTitle(
                                text: 'Save',
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Image.asset('assets/images/cill1-1 2.png'),
                    ),
                    SizedBox(
                      height: 109,
                    ),
                    _buildSelectedScreen(), // Display the selected screen
                  ],
                ),
              ),
              Spacer(),
              Container(
                color: Colors.amberAccent,
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconWidget(
                      onTap: () {
                        toggleOverlayVisibility(0);
                      },
                      iconAsset: 'assets/icons/head.svg',
                      label: 'Face',
                      isSelected: selectedIconIndex == 0,
                    ),
                    CustomIconWidget(
                      onTap: () {
                        toggleOverlayVisibility(1);
                      },
                      iconAsset: 'assets/icons/skin.svg',
                      label: 'Skin tone',
                      isSelected: selectedIconIndex == 1,
                    ),
                    CustomIconWidget(
                      onTap: () {
                        toggleOverlayVisibility(2);
                      },
                      iconAsset: 'assets/icons/hair.svg',
                      label: 'Hair',
                      isSelected: selectedIconIndex == 2,
                    ),
                    CustomIconWidget(
                      onTap: () {
                        toggleOverlayVisibility(3);
                      },
                      iconAsset: 'assets/icons/accessories.svg',
                      label: 'Glasses',
                      isSelected: selectedIconIndex == 3,
                    ),
                    CustomIconWidget(
                      onTap: () {
                        toggleOverlayVisibility(4);
                      },
                      iconAsset: 'assets/icons/mouth.svg',
                      label: 'Lips',
                      isSelected: selectedIconIndex == 4,
                    ),
                    CustomIconWidget(
                      onTap: () {
                        toggleOverlayVisibility(5);
                      },
                      iconAsset: 'assets/icons/clothes.svg',
                      label: 'Outfit',
                      isSelected: selectedIconIndex == 5,
                    ),
                    CustomIconWidget(
                      onTap: () {
                        toggleOverlayVisibility(6);
                      },
                      iconAsset: 'assets/icons/nose.svg',
                      label: 'Nose',
                      isSelected: selectedIconIndex == 5,
                    ),
                    CustomIconWidget(
                      onTap: () {
                        toggleOverlayVisibility(7);
                      },
                      iconAsset: 'assets/icons/eye.svg',
                      label: 'Eyes',
                      isSelected: selectedIconIndex == 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
