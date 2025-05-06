// ignore_for_file: sized_box_for_whitespace, duplicate_ignore, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/config/assets.dart';
import 'package:meditation_app/features/sleep/views/sleep_play.dart';

class Sleep extends StatelessWidget {
  Sleep({super.key});
  final List<Map<String, dynamic>> meditations = [
    {
      "color": AppColors.mainPurple,
      "icon": Icons.headphones_outlined,
      "title": "All",
    },
    {"color": Color(0xffA0A3B1), "icon": Icons.favorite, "title": "My"},
    {"color": Color(0xffA0A3B1), "icon": Icons.face, "title": "Anxious"},
    {"color": Color(0xffA0A3B1), "icon": Icons.mood, "title": 'Sleep'},
    {"color": Color(0xffA0A3B1), "icon": Icons.healing, "title": 'Calm'},
  ];

  // todo

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
    {
      "image": Assets.imagesSleepNight3,
      "title": "Sweet Sleep",
      "time": "30 MIN",
      "type": "SLEEP MUSIC",
    },

    {
      "image": Assets.imagesSleepNight4,
      "title": "Sweet Sleep",
      "time": "30 MIN",
      "type": "SLEEP MUSIC",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.3, // Adjust as needed
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColors.sleepColor,
              ),
              Positioned(
                top: 60,
                left: 100,
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: 50.74,
                  height: 50.74,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 50.74,
                          height: 50.74,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFD2D4DE),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11.95,
                        top: 9.01,
                        child: Container(
                          width: 9.31,
                          height: 9.31,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC4C5D0),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29.09,
                        top: 18.40,
                        child: Container(
                          width: 13.50,
                          height: 13.50,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF1F1F3),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16.61,
                        top: 38.35,
                        child: Container(
                          width: 6.04,
                          height: 6.04,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFC4C5D0),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 20,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset(Assets.imagesSleepStar),
                ),
              ),

              Positioned(
                top: 120,
                left: 100,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset(Assets.imagesSleepStarWhite),
                ),
              ),

              Positioned(
                top: 200,
                left: 100,
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: 20,
                  height: 20,
                  child: Image.asset(Assets.imagesSleepStarWhite),
                ),
              ),

              Positioned(
                top: 400,
                left: 0,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset(Assets.imagesSleepCloud),
                ),
              ),

              Positioned(
                bottom: 120,
                left: 100,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainWhite,
                  ),
                ),
              ),
              Positioned(
                bottom: 120,
                left: 100,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainWhite,
                  ),
                ),
              ),
              Positioned(
                top: 140,
                right: 100,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainWhite,
                  ),
                ),
              ),

              Positioned(
                top: 300,
                left: 100,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainWhite,
                  ),
                ),
              ),

              Positioned(
                top: 200,
                left: -40,
                child: SizedBox(
                  width: 400.31,
                  height: 500.83,
                  child: Image.asset(Assets.imagesSleepCurve1),
                ),
              ),

              Positioned(
                top: 10,
                right: -120,
                child: SizedBox(
                  width: 400.31,
                  height: 500.83,
                  child: Image.asset(Assets.imagesSleepCurve2),
                ),
              ),

              Positioned(
                top: 400,
                right: 10,
                child: SizedBox(
                  width: 20.31,
                  height: 20.83,

                  child: Image.asset(Assets.imagesSleepStar),
                ),
              ),

              Positioned(
                top: 300,
                right: 10,
                child: SizedBox(
                  width: 20.31,
                  height: 20.83,

                  child: Image.asset(Assets.imagesSleepStar),
                ),
              ),

              Positioned(
                top: 320,
                right: 10,
                child: SizedBox(
                  width: 20.31,
                  height: 20.83,

                  child: Image.asset(Assets.imagesSleepCurveCloud),
                ),
              ),

              Positioned(
                top: 80,
                left: 0,
                right: 10,
                child: SizedBox(
                  width: 100.31,
                  height: 100.83,

                  child: Image.asset(Assets.imagesSleepCurveCloud),
                ),
              ),

              Positioned(
                top: 200,
                left: 200,
                right: 10,
                child: SizedBox(
                  width: 100.31,
                  height: 100.83,

                  child: Image.asset(Assets.imagesSleepCurveCloud),
                ),
              ),

              Positioned(
                top: 200,
                left: 20,

                child: SizedBox(
                  width: 100.31,
                  height: 100.83,

                  child: Image.asset(Assets.imagesSleepCurveCloud),
                ),
              ),

              Positioned(
                bottom: 300,
                right: 20,
                child: SizedBox(
                  width: 100.31,
                  height: 100.83,

                  child: Image.asset(Assets.imagesSleepCurveCloud),
                ),
              ),

              Positioned(
                bottom: 300,
                right: 100,
                child: SizedBox(
                  width: 20.31,
                  height: 20.83,

                  child: Image.asset(Assets.imagesSleepStar),
                ),
              ),

              Positioned(
                bottom: 300,
                left: 100,
                child: SizedBox(
                  width: 20.31,
                  height: 20.83,

                  child: Image.asset(Assets.imagesSleepStar),
                ),
              ),
              Positioned(
                bottom: 300,
                right: 100,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainWhite,
                  ),
                ),
              ),

              // todo
              Positioned(
                top: 125.h,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Text(
                      'Sleep Stories',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFFE6E7F2),
                        fontSize: 24,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w700,
                        height: 1.08,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Soothing bedtime stories to help you fall\ninto a deep and natural sleep',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFFEBEAEC),
                        fontSize: 14,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w300,
                        height: 1.35,
                      ),
                    ),
                    SizedBox(height: 34.h),

                    SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                        height: 100.h,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: meditations.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SizedBox(
                                height: 100.h,

                                child: Column(
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: ShapeDecoration(
                                        color: meditations[index]['color'],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            25,
                                          ),
                                        ),
                                      ),
                                      child: Icon(
                                        meditations[index]['icon'],
                                        color: AppColors.mainWhite,
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      meditations[index]['title'],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF3F414E),
                                        fontSize: 16,
                                        fontFamily: 'HelveticaNeue',
                                        fontWeight: FontWeight.w400,
                                        height: 1.08,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: 456.54,
                        height: 290.21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(Assets.imagesSleepHome),

                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 300),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.mainPurple.withOpacity(0.4),
                                ),
                                child: Icon(
                                  Icons.lock_outline,
                                  color: AppColors.mainWhite,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              SizedBox(
                                height: 39.07,
                                child: Text(
                                  'The ocean moon',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFFFFE7BF),
                                    fontSize: 30,
                                    fontFamily: 'Garamond Premier Pro',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.72,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.h),
                              SizedBox(
                                height: 44.08,
                                child: Text(
                                  'Non-stop 8- hour mixes of our\nmost popular sleep audio',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: const Color(0xFFF8F9FF),
                                    fontSize: 16,
                                    fontFamily: 'HelveticaNeue',
                                    fontWeight: FontWeight.w300,
                                    height: 1.35,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Container(
                                width: 70.20,
                                height: 35.06,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFEBEAEC),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: 41.11,
                                    height: 14.02,
                                    child: Text(
                                      'START',
                                      style: TextStyle(
                                        color: const Color(0xFF3F414E),
                                        fontSize: 12,
                                        fontFamily: 'HelveticaNeue',
                                        fontWeight: FontWeight.w400,
                                        height: 1.08,
                                        letterSpacing: 0.60,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 620,
                left: 100,
                child: SizedBox(
                  width: 20.31,
                  height: 20.83,

                  child: Image.asset(Assets.imagesSleepStar),
                ),
              ),

              Positioned(
                top: 574,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 500,
                    width: double.infinity,

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
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return SleepCard(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SleepPlay();
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SleepCard extends StatelessWidget {
  const SleepCard({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    required this.type,
    this.onTap,
  });
  final String image;
  final String title;
  final String time, type;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 177,
              height: 122.93,
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: 106.10,
            height: 20.58,
            child: Text(
              title,
              style: TextStyle(
                color: const Color(0xFFE6E7F2),
                fontSize: 18,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w700,
                height: 1.08,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 13,
                child: Text(
                  time,
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
                  type,
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
        ],
      ),
    );
  }
}
