import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/features/choose_character/choose_character_screen.dart';

import '../../core/utils/constant.dart';
import '../auth/presentation/widgets/custom_button.dart';

class AddNameScreen extends StatelessWidget {
  const AddNameScreen({super.key});

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
                'Choose Name',
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
                'Give a name to your avatar so you\n can call it by its name.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff656565),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(70),
                child: TextField(
                    decoration: InputDecoration(
                  //labelText: 'Enter text',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue, // Customize the color here
                    ),
                  ),
                )),
              ),
              Spacer(),
              CustomButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChooseCharacterScreen(),
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
