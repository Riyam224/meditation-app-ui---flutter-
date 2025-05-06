// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/config/assets.dart';

import '../../../core/config/app_colors.dart';

class SleepFocus extends StatelessWidget {
  const SleepFocus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sleepColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColors.sleepColor,
            child: Image.asset(
              Assets.imagesMusic2,
              color: AppColors.sleepColor,
            ),
          ),
          Positioned(
            top: 100.h,
            right: 20,
            left: 20,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.mainWhite,
                    ),
                    child: Icon(Icons.close, color: AppColors.mainBlack),
                  ),
                ),
                Spacer(),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.sleepColor.withOpacity(0.7),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: AppColors.mainWhite,
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.sleepColor.withOpacity(0.7),
                  ),
                  child: Icon(
                    Icons.file_copy_outlined,
                    color: AppColors.mainWhite,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 350,
            left: 0,
            right: 0,
            child: SizedBox(
              width: 263.74,
              height: 38.19,
              child: Text(
                'Night Island',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.mainWhite,
                  fontSize: 34,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w700,
                  height: 1.08,
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 0,
            right: 0,
            child: SizedBox(
              width: 130.98,
              height: 13,
              child: Text(
                'SLEEP MUSIC',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.mainWhite,
                  fontSize: 14,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                  height: 1.08,
                  letterSpacing: 0.70,
                ),
              ),
            ),
          ),

          Positioned(
            top: 450,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.replay_10, // No flip, normal left direction
                          size: 50,
                          color: AppColors.mainWhite,
                        ),
                        Positioned(
                          bottom: 18,
                          child: Text(
                            '15',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.mainWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 60.05.w,
                    height: 60.04.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.mainWhite,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.mainPurple,
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Icon(Icons.pause, color: AppColors.mainBlack),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(
                            3.14159,
                          ), // Flip horizontally
                          child: Icon(
                            Icons.replay_10,
                            size: 50,
                            color: AppColors.mainWhite,
                          ),
                        ),
                        Positioned(
                          bottom: 18,
                          child: Text(
                            '15',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.mainWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 580,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: 100,
                height: 100,

                child: Column(
                  children: [
                    // todo progress bar
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: AppColors.mainPurple,
                        inactiveTrackColor: AppColors.mainPurple.withOpacity(
                          0.6,
                        ),
                        thumbColor: AppColors.mainPurple,
                        overlayColor: AppColors.mainPurple,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 6,
                        ),
                        trackHeight: 2,
                      ),
                      child: Slider(
                        value: 20, // Dummy value
                        min: 0,
                        max: 100,
                        onChanged: (value) {
                          // Handle progress change
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "01:30",
                            style: TextStyle(
                              color: AppColors.mainWhite,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "45:00",
                            style: TextStyle(
                              color: AppColors.mainWhite,
                              fontSize: 12,
                            ),
                          ),
                        ],
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
