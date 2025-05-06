// ignore_for_file: sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/widgets/custom_btn.dart';
import 'package:meditation_app/features/sleep/views/sleep.dart';
import 'package:meditation_app/features/sleep/views/sleep_music.dart';

import '../../../core/config/assets.dart';

class SleepPlay extends StatelessWidget {
  SleepPlay({super.key});

  final List<Map<String, dynamic>> cards = [
    {
      "image": Assets.imagesSleepNight1,
      "title": "Night Island",
      "time": "45 MIN",
      "type": "SLEEP MUSIC",
    },
    {
      "image": Assets.imagesSleepNight2,
      "title": "Sweet Sleep",
      "time": "45 MIN",
      "type": "SLEEP MUSIC",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.sleepColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    clipBehavior:
                        Clip.hardEdge, // Add this to apply borderRadius to child
                    child: Image.asset(
                      Assets.imagesSleepNight4,
                      fit: BoxFit.cover,
                      width:
                          double.infinity, // Optional, helps ensure full width
                    ),
                  ),
                  Positioned(
                    top: 70.h,

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(child: Icon(Icons.arrow_back)),
                          ),
                          SizedBox(width: 200.w),

                          Container(
                            width: 55,
                            height: 55,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.mainPurple.withOpacity(0.4),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite_border,
                                color: AppColors.mainWhite,
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Container(
                            width: 55,
                            height: 55,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.mainPurple.withOpacity(0.4),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.file_download,
                                color: AppColors.mainWhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              // todo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Container(
                      width: 255.44,
                      height: 38.19,
                      child: Text(
                        'Night Island',
                        style: TextStyle(
                          color: AppColors.mainWhite,
                          fontSize: 25,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w800,
                          height: 1.08,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 13,
                          child: Text(
                            '45 MIN',
                            style: TextStyle(
                              color: const Color(0xFF98A0BD),
                              fontSize: 11,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w400,
                              height: 1.08,
                              letterSpacing: 0.55,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Container(
                          width: 3.25,
                          height: 3.25,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF98A0BD),
                            shape: OvalBorder(),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        SizedBox(
                          width: 79.17,
                          height: 13,
                          child: Text(
                            'SLEEP MUSIC',
                            style: TextStyle(
                              color: const Color(0xFF98A0BD),
                              fontSize: 11,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w400,
                              height: 1.08,
                              letterSpacing: 0.55,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Ease the mind into a restful night’s sleep  with\nthese deep, amblent tones.',
                      style: TextStyle(
                        color: const Color(0xFF98A1BD),
                        fontSize: 16,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w300,
                        height: 1.45,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        Icon(Icons.favorite, color: AppColors.mainWhite),
                        SizedBox(width: 10.w),
                        SizedBox(
                          height: 13,
                          child: Text(
                            '24.234 Favorits',
                            style: TextStyle(
                              color: const Color(0xFFE6E7F2),
                              fontSize: 14,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w400,
                              height: 1.08,
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.headphones, color: AppColors.mainWhite),
                        SizedBox(width: 10.w),
                        SizedBox(
                          height: 13,
                          child: Text(
                            '34.234 Lestening',
                            style: TextStyle(
                              color: const Color(0xFFE6E7F2),
                              fontSize: 14,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w400,
                              height: 1.08,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 66.h),
                    Text(
                      'Related',
                      style: TextStyle(
                        color: AppColors.mainWhite,
                        fontSize: 20,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w800,
                        height: 1.08,
                      ),
                    ),

                    SizedBox(
                      height: 300.h,
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 200,
                          crossAxisSpacing: 20,
                          mainAxisSpacing:
                              4, // <- Decrease this value to reduce vertical space
                          childAspectRatio:
                              10, // This value seems very high; usually between 0.5 to 2
                        ),
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return SleepCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SleepMusic();
                                  },
                                ),
                              );
                            },
                            image: cards[index]['image'],
                            title: cards[index]['title'],
                            time: cards[index]['time'],
                            type: cards[index]['type'],
                          );
                        },
                      ),
                    ),

                    // CustomTextField(hintText: 'play'),
                    CustomBtn(
                      btnTitle: 'Play',
                      onPressed: () {},
                      textColor: AppColors.mainWhite,
                      bgColor: AppColors.mainPurple,
                    ),
                    SizedBox(height: 20.h),
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
