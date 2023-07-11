import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_smart_avatar/src/features/auth/presentation/widgets/custom_text.dart';

class HairScreen extends StatefulWidget {
  const HairScreen({super.key});

  @override
  State<HairScreen> createState() => _HairScreenState();
}

class _HairScreenState extends State<HairScreen> {
  int selectedStyleIndex = 0;

  void selectStyle(int index) {
    setState(() {
      selectedStyleIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48),
      child: Column(
        children: [
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
                    child: Center(child: CustomSubTitle(text: 'Style')),
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
                    width: 10.w,
                  ),
                  Container(
                    height: 70,
                    width: 350,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              if (selectedStyleIndex == 0)
                                Image.asset(
                                    'assets/icons/Group 1261153717.png'),
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
      ),
    );
  }
}
