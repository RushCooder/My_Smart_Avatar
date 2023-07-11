import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../auth/presentation/widgets/custom_text.dart';

class EyesScreen extends StatefulWidget {
  const EyesScreen({super.key});

  @override
  State<EyesScreen> createState() => _EyesScreenState();
}

class _EyesScreenState extends State<EyesScreen> {
  int selectedStyleIndex = 0;
  double _sliderValue = 1;
  void selectStyle(int index) {
    setState(() {
      selectedStyleIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 330.w,
              child: Slider(
                value: _sliderValue,
                min: 1.0,
                max: 11.0,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                activeColor: primaryColor,
                inactiveColor: Colors.white,
              ),
            ),
            Container(
              height: 20,
              width: 29,
              decoration: BoxDecoration(
                color: Color(0xff333333),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  '${(_sliderValue - 1).toInt()}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  selectStyle(0);
                },
                child: Container(
                  height: 40,
                  color: selectedStyleIndex == 0
                      ? Color(0xffEAE4FF)
                      : Colors.white,
                  child: Center(child: CustomSubTitle(text: 'Shape')),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  selectStyle(1);
                },
                child: Container(
                  height: 40,
                  color: selectedStyleIndex == 1
                      ? Color(0xffEAE4FF)
                      : Colors.white,
                  child: Center(child: CustomSubTitle(text: 'Color')),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 0.5,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Image.asset('assets/icons/Vector.png'),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(left: 10),
                        margin: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            if (selectedStyleIndex == 0)
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      'assets/icons/image_15-removebg-preview 1.png'),
                                  Text('Eye')
                                ],
                              ),
                            if (selectedStyleIndex == 1)
                              CircleAvatar(
                                radius: 25,
                              )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
