// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/widgets/custom_btn.dart';
import 'package:meditation_app/features/topic_time_to_meditate/views/widgets/days_in_circle.dart';
import 'package:meditation_app/features/topic_time_to_meditate/views/widgets/time_picker_demo.dart';

class TimeToMeditate extends StatelessWidget {
  TimeToMeditate({super.key});

  static const routeName = '/time-to-meditate';

  final List<Map<String, dynamic>> days = [
    {'day': 'SU', 'isSelected': false},
    {'day': 'M', 'isSelected': false},
    {'day': 'T', 'isSelected': false},
    {'day': 'W', 'isSelected': false},
    {'day': 'TH', 'isSelected': true},
    {'day': 'F', 'isSelected': true},
    {'day': 'S', 'isSelected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 82.21,
          left: 20,
          right: 20,
          bottom: 20,
        ),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 259.31.w,
                height: 60.01.h,
                child: Text(
                  'What time would you like to meditate?',
                  style: TextStyle(
                    color: const Color(0xFF3F414E),
                    fontSize: 24,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w700,
                    height: 1.35,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 317.w,
                height: 48.h,
                child: Text(
                  'Any time you can choose but We recommend first thing in th morning.',
                  style: TextStyle(
                    color: const Color(0xFFA1A4B2),
                    fontSize: 16,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                    height: 1.65,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: 399.w,
                height: 212.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF5F5F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const TimePickerUIOnly(),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                width: 259.31,
                height: 60.01,
                child: Text(
                  'Which day would you like to meditate?',
                  style: TextStyle(
                    color: const Color(0xFF3F414E),
                    fontSize: 24,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w700,
                    height: 1.35,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: 317,
                height: 48,
                child: Text(
                  'Everyday is best, but we recommend picking\nat least five.',
                  style: TextStyle(
                    color: const Color(0xFFA1A4B2),
                    fontSize: 16,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                    height: 1.65,
                  ),
                ),
              ),
              SizedBox(height: 48.86.h),
              SizedBox(
                width: 414.w,
                height: 40.75.h,
                child: ListView.separated(
                  padding: const EdgeInsets.only(left: 20),
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 10);
                  },
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return DaysInCircle(
                      color:
                          days[index]['isSelected']
                              ? const Color(0xFFF5F5F9)
                              : const Color(0xFF3F414E),
                      day: days[index]['day'],
                      textColor:
                          days[index]['isSelected']
                              ? const Color(0xFF3F414E)
                              : const Color(0xFFF5F5F9),
                    );
                  },
                ),
              ),

              SizedBox(height: 66.h),
              CustomBtn(
                btnTitle: 'save',
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                bgColor: AppColors.mainPurple,
                textColor: AppColors.mainWhite,
              ),
              SizedBox(height: 20.h),
              Center(
                child: SizedBox(
                  width: 134.54,
                  height: 14,
                  child: Text(
                    'NO THANKS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF3F414E),
                      fontSize: 14,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w400,
                      height: 1.08,
                      letterSpacing: 0.70,
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
