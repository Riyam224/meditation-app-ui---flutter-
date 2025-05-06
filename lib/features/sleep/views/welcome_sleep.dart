import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/config/assets.dart';
import 'package:meditation_app/features/sleep/views/sleep.dart';

class WelcomeSleep extends StatelessWidget {
  const WelcomeSleep({super.key});

  static const routeName = '/welcome-sleep';
  @override
  Widget build(BuildContext context) {
    return Stack(
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

        Positioned(
          top: 120.h,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              children: [
                Text(
                  'Wecome to Sleep',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.mainPurple,
                    fontSize: 30,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w700,
                    height: 1.37,
                    letterSpacing: 0.30,
                  ),
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  child: Text(
                    'Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFEBEAEC),
                      fontSize: 12,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 66.h),
                SizedBox(
                  width: double.infinity,
                  height: 150.h,
                  child: Image.asset(Assets.imagesBirdss, fit: BoxFit.contain),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 430.h,
          left: 40,
          child: Image.asset(Assets.imagesTree, fit: BoxFit.contain),
        ),
        Positioned(
          top: 400,
          left: 20,
          child: Image.asset(Assets.imagesLeaf1, fit: BoxFit.contain),
        ),
        Positioned(top: 440, left: 80, child: Image.asset(Assets.imagesLeaf)),
        Positioned(
          top: 460,
          left: 255,
          child: SizedBox(
            width: 29.20,
            height: 17.22,
            child: Image.asset(Assets.imagesLeaf3),
          ),
        ),
        Positioned(
          top: 460,
          left: 140,
          child: SizedBox(
            width: 29.20,
            height: 17.22,
            child: Image.asset(Assets.imagesLeaf3),
          ),
        ),
        Positioned(
          top: 650,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: 103,
              height: 20,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return Sleep();
                      },
                    ),
                  );
                },

                child: Center(
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                      color: AppColors.mainPurple,
                      fontSize: 20,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w600,
                      height: 1.08,
                      letterSpacing: 0.70,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
