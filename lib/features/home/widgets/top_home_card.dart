// ignore_for_file: sort_child_properties_last, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/features/home/views/course_details.dart';

class TopHomeCard extends StatelessWidget {
  const TopHomeCard({
    super.key,
    required this.textColor,
    required this.btnColor,
    required this.bgColor,
    required this.btnTextColor,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final Color textColor;
  final Color btnColor;
  final Color bgColor;
  final Color btnTextColor;
  final String title;
  final String subtitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              return CourseDetails();
            },
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: 200,
            height: 250,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 10,
            right: 0,
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset(image, fit: BoxFit.cover),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: AppColors.mainPurple,
              ),
              // child: Image.asset(Assets.imagesHometopcard1, fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 85,
            left: 20,
            child: SizedBox(
              width: 58,
              height: 18.14,
              child: Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w700,
                  height: 1.08,
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 20,
            child: SizedBox(
              width: 49,
              height: 11.45,
              child: Text(
                subtitle,
                style: TextStyle(
                  color: textColor,
                  fontSize: 11,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                  height: 1.08,
                  letterSpacing: 0.55,
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: 165.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '3-10 MIN',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 11,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w700,
                        height: 1.08,
                        letterSpacing: 0.55,
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: btnColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 41,
                          height: 14,
                          child: Text(
                            'START',
                            style: TextStyle(
                              color: btnTextColor,
                              fontSize: 12,
                              fontFamily: 'HelveticaNeue',
                              fontWeight: FontWeight.w400,

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
    );
  }
}
