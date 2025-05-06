import 'package:flutter/material.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/config/assets.dart';
import 'package:meditation_app/features/sleep/views/sleep.dart';
import 'package:meditation_app/features/sleep/views/sleep_focus.dart';

class SleepMusic extends StatelessWidget {
  SleepMusic({super.key});
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
      "image": Assets.imagesSleepNight2,
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
    {
      "image": Assets.imagesSleepNight1,
      "title": "Night Island",
      "time": "45 MIN",
      "type": "SLEEP MUSIC",
    },
    {
      "image": Assets.imagesSleepNight1,
      "title": "Night Island",
      "time": "45 MIN",
      "type": "SLEEP MUSIC",
    },
    {
      "image": Assets.imagesSleepNight2,
      "title": "Night Island",
      "time": "45 MIN",
      "type": "SLEEP MUSIC",
    },
    {
      "image": Assets.imagesSleepNight1,
      "title": "Night Island",
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
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFE6E7F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38),
                          ),
                        ),
                        child: Center(child: Icon(Icons.arrow_back)),
                      ),
                    ),

                    Center(
                      child: Text(
                        'Sleep Music',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFFE6E7F2),
                          fontSize: 20,
                          fontFamily: 'HelveticaNeue',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: 55, height: 55),
                  ],
                ),
                // SizedBox(height: 10.h),
                SizedBox(
                  height: 1000,
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
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return SleepCard(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SleepFocus();
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
