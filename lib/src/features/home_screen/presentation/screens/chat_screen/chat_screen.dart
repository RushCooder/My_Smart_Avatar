import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/core/utils/constant.dart';
import 'package:my_smart_avatar/src/features/auth/presentation/widgets/custom_text.dart';
import 'package:my_smart_avatar/src/features/home_screen/presentation/screens/setting_screen/settings_screen.dart';

import '../../../../auth/presentation/widgets/payment_formField.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController message = TextEditingController();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff9085BC),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 16, top: 40, bottom: 10, right: 16),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingsScreen(),
                        ));
                      },
                      child: Image.asset('assets/icons/Group (1).png'))),
              SizedBox(
                height: 50.h,
              ),
              Center(child: Image.asset('assets/icons/Frame 1261153028.png')),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 126.w,
                height: 55.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 51.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: selectedIndex == 0
                            ? primaryColor
                            : Colors.transparent,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: Center(child: CustomSubTitle(text: 'Talk')),
                      ),
                    ),
                    Container(
                      width: 51.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: selectedIndex == 1
                            ? primaryColor
                            : Colors.transparent,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Center(child: CustomSubTitle(text: 'Chat')),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              if (selectedIndex == 0)
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: primaryColor),
                        child:
                            Image.asset('assets/icons/svgexport-17 (46) 1.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 37,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Color(0xff705DBB),
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                            'assets/icons/Group 1261153734 (1).png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: primaryColor),
                        child:
                            Image.asset('assets/icons/svgexport-17 (47) 1.png'),
                      ),
                    ],
                  ),
                ),
              if (selectedIndex == 1)
                Expanded(
                  child: Container(
                    color: Color(0xff4F4967),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150.h,
                          ),
                          Divider(),
                          Spacer(),
                          Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: PaymentFormField(
                                    labelText: 'Message', controller: message),
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width: 44,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset('assets/icons/send.png'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
