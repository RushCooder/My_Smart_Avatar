import 'package:flutter/material.dart';

import '../../../../auth/presentation/widgets/custom_text.dart';

class OutfitScreen extends StatefulWidget {
  const OutfitScreen({super.key});

  @override
  State<OutfitScreen> createState() => _OutfitScreenState();
}

class _OutfitScreenState extends State<OutfitScreen> {
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
                    child: Center(child: CustomSubTitle(text: 'Masculine')),
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
                    child: Center(child: CustomSubTitle(text: 'Feminine')),
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
                          margin: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              if (selectedStyleIndex == 0)
                                Image.asset(
                                    'assets/icons/Group 1261153707.png'),
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
