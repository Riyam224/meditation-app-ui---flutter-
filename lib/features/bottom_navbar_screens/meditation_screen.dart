import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/features/topic_time_to_meditate/views/topics.dart';

import '../../core/config/assets.dart';

class MeditateScreen extends StatelessWidget {
  MeditateScreen({super.key});
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

  final List<GridItem> meditationsList = [
    GridItem(
      title: '7 Days of Calm',
      height: 200.81,
      width: 200.01,
      color: AppColors.mainPurple,
      image: Assets.imagesMed1,
      textColor: AppColors.mainWhite,
    ),

    GridItem(
      title: 'Anxiet Release',
      height: 200.81,
      width: 200.01,
      color: Color(0xffF2E8C8),
      image: Assets.imagesMed2,
      textColor: AppColors.mainWhite,
    ),
    GridItem(
      title: '5 Days of Calm',
      height: 200.81,
      width: 200.01,
      color: Color(0xffBCFAC9),
      image: Assets.imagesMed3,
      textColor: AppColors.mainBlack,
    ),
    GridItem(
      title: 'Peaceful Sleep',
      height: 200.81,
      width: 200.01,
      color: Color(0xffF1FBEF),
      image: Assets.imagesMed4,
      textColor: AppColors.mainBlack,
    ),

    GridItem(
      title: '7 Days of Calm',
      height: 200.81,
      width: 200.01,
      color: AppColors.mainPurple,
      image: Assets.imagesMed1,
      textColor: AppColors.mainWhite,
    ),

    GridItem(
      title: 'Anxiet Release',
      height: 200.81,
      width: 200.01,
      color: Color(0xffF2E8C8),
      image: Assets.imagesMed2,
      textColor: AppColors.mainWhite,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 2, // Meditate tab selected
      //   onTap: (index) {
      //     // 🔁 Handle navigation based on index
      //     switch (index) {
      //       case 0:
      //         Navigator.pushNamed(context, '/home');
      //         break;
      //       case 1:
      //         // Navigator.pushNamed(context, '/sleep');
      //         break;
      //       case 2:
      //         // Current page
      //         break;
      //       case 3:
      //         // Navigator.pushNamed(context, '/music');
      //         break;
      //       case 4:
      //         // Navigator.pushNamed(context, '/profile');
      //         break;
      //     }
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: AppColors.mainPurple,
      //   unselectedItemColor: const Color(0xFFA0A3B1),
      //   selectedLabelStyle: const TextStyle(fontFamily: 'HelveticaNeue'),
      //   unselectedLabelStyle: const TextStyle(fontFamily: 'HelveticaNeue'),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.nightlight_round),
      //       label: 'Sleep',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.self_improvement),
      //       label: 'Meditate',
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Music'),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       label: 'Afsar',
      //     ),
      //   ],
      // ),

      // todo
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100.h),
              Center(
                child: Text(
                  'Meditate',

                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF3F414E),
                    fontSize: 28,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w700,
                    height: 1.08,
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 336,
                height: 44,
                child: Text(
                  'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA0A3B1),
                    fontSize: 16,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                    height: 1.35,
                  ),
                ),
              ),
              SizedBox(height: 35.h),
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
                                    borderRadius: BorderRadius.circular(25),
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
              SizedBox(height: 30.h),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 95.h,
                    decoration: BoxDecoration(
                      color: Color(0xffF1DDCF),
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Assets.imagesMeditationTop),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25.h,
                    left: 30.w,
                    right: 30.w,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Daily Thought',
                              style: TextStyle(
                                color: AppColors.mainBlack,
                                fontSize: 18,
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w700,
                                height: 1.08,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Text(
                                  'MEDITATION',
                                  style: TextStyle(
                                    color: AppColors.mainBlack,
                                    fontSize: 11,
                                    fontFamily: 'HelveticaNeue',
                                    fontWeight: FontWeight.w500,
                                    height: 1.08,
                                    letterSpacing: 0.55,
                                  ),
                                ),
                                SizedBox(width: 5.h),
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFEBEAEC),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                SizedBox(width: 5.h),
                                Text(
                                  '3-10 MIN',
                                  style: TextStyle(
                                    color: const Color(0xFFEBEAEC),
                                    fontSize: 11,
                                    fontFamily: 'HelveticaNeue',
                                    fontWeight: FontWeight.w500,
                                    height: 1.08,
                                    letterSpacing: 0.55,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.mainWhite,
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: AppColors.mainBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // todo
              SizedBox(
                height: 1000,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 220,
                    crossAxisSpacing: 10,
                    childAspectRatio: 10,
                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    final item = meditationsList[index];
                    return MedModeItem(
                      image: item.image,
                      color: item.color,
                      title: item.title,
                      height: item.height,
                      width: item.width,
                    );
                  },
                ),
              ),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }
}

class MedModeItem extends StatelessWidget {
  const MedModeItem({
    super.key,
    required this.image,
    required this.color,
    required this.title,
    required this.height,
    required this.width,
  });

  final String image;
  final Color color;
  final String title;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 150,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.mainWhite,
                fontSize: 16,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w800,
                height: 1.08,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
