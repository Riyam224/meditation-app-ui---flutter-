// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/features/bottom_navbar_screens/meditation_screen.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/config/assets.dart';

class CourseDetails extends StatelessWidget {
  CourseDetails({super.key});
  static const routeName = '/course-details';

  final List<Map<String, dynamic>> songs = [
    {
      'btnColor': AppColors.mainPurple,
      'iconColor': AppColors.mainWhite,
      'title': 'Body Scan',
      'duration': '5 min',
    },
    {
      'btnColor': const Color.fromARGB(255, 241, 234, 234),
      'iconColor': AppColors.mainBlack,
      'title': 'Body Scan',
      'duration': '5 min',
    },

    {
      'btnColor': const Color.fromARGB(255, 241, 234, 234),
      'iconColor': AppColors.mainBlack,
      'title': 'Making Happiness ',
      'duration': '3 min',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 288.78.h,

                  child: Image.asset(Assets.imagesSun, fit: BoxFit.cover),
                ),
                Positioned(
                  top: 76.h,
                  left: 20,
                  right: 20,

                  child: Row(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.mainWhite,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: AppColors.mainBlack,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.mainBlack.withOpacity(0.6),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          color: AppColors.mainWhite,
                        ),
                      ),
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.mainBlack.withOpacity(0.6),
                        ),
                        child: Icon(
                          Icons.file_copy_outlined,
                          color: AppColors.mainWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,

                    child: Text(
                      'Happy Morning',
                      style: TextStyle(
                        color: const Color(0xFF3F414E),
                        fontSize: 34,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    width: 62.56,
                    height: 13,
                    child: Text(
                      'COURSE',
                      style: TextStyle(
                        color: const Color(0xFFA1A4B2),
                        fontSize: 14,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                        letterSpacing: 0.70,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Ease the mind into a restful night’s sleep  with\nthese deep, amblent tones.',

                    style: TextStyle(
                      color: const Color(0xFFA1A4B2),
                      fontSize: 16,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w300,
                      height: 1.45,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 99,
                        height: 13,
                        child: Text(
                          '24.234 Favorits',
                          style: TextStyle(
                            color: const Color(0xFFA1A4B2),
                            fontSize: 14,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w400,
                            height: 1.08,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.headphones, color: AppColors.mainPurple),
                      SizedBox(width: 10.w),
                      SizedBox(
                        height: 13,
                        child: Text(
                          '34.234 Lestening',
                          style: TextStyle(
                            color: const Color(0xFFA1A4B2),
                            fontSize: 14,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w400,
                            height: 1.08,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 43.h),
                  SizedBox(
                    height: 20.83,
                    child: Text(
                      'Pick a Nnrrator',
                      style: TextStyle(
                        color: const Color(0xFF3F414E),
                        fontSize: 20,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w700,
                        height: 1.08,
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 104.03,
                        height: 13,
                        child: Text(
                          'MALE VOICE',
                          style: TextStyle(
                            color: AppColors.mainPurple,
                            fontSize: 16,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w400,
                            height: 1.08,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 126.32,
                        height: 13,
                        child: Text(
                          'FEMALE VOICE',
                          style: TextStyle(
                            color: const Color(0xFFA1A4B2),
                            fontSize: 16,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w400,
                            height: 1.08,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 46.85,
                      height: 2,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF8E97FD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2),
                            topRight: Radius.circular(2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    height: 300.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: songs.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) {
                                        return MeditateScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: songs[index]['btnColor'],
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: songs[index]["iconColor"],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    songs[index]['title'],
                                    style: TextStyle(
                                      color: const Color(0xFF3F414E),
                                      fontSize: 16,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w400,
                                      height: 1.08,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    songs[index]['duration'],
                                    style: TextStyle(
                                      color: const Color(0xFFA1A4B2),
                                      fontSize: 11,
                                      fontFamily: 'HelveticaNeue',
                                      fontWeight: FontWeight.w400,
                                      height: 1.08,
                                      letterSpacing: 0.55,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
