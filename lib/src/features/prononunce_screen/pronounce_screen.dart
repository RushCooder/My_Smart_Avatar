import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/features/auth/presentation/widgets/custom_button.dart';

import '../../core/utils/constant.dart';
import '../add_name_screen/add_name.dart';

class PronounceScreen extends StatefulWidget {
  const PronounceScreen({super.key});

  @override
  State<PronounceScreen> createState() => _PronounceScreenState();
}

class _PronounceScreenState extends State<PronounceScreen> {
  final items = [
    'They/Them',
    'She/Her',
    'He/Him',
  ];
  int itemIndex = 0;
  int selectedIndex = 0;
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
              Text(
                'Your pronounce',
                style: TextStyle(
                  fontSize: 24.sp,
                  color: headingColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'We need this info to make your experience more relevant and exciting.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff656565),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 350,
                child: CupertinoPicker(
                    itemExtent: 64,
                    onSelectedItemChanged: (index) {
                      setState(() => this.selectedIndex = index);
                    },
                    children: items
                        .map((item) => Center(
                              child: Text(
                                item,
                                style: TextStyle(fontSize: 20),
                              ),
                            ))
                        .toList()),
              ),
              Spacer(),
              CustomButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddNameScreen(),
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
