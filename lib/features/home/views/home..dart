// ignore_for_file: unnecessary_import, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/config/assets.dart';
import 'package:meditation_app/features/home/widgets/top_home_card.dart';

import '../../bottom_navbar_screens/meditation_screen.dart';
import '../../bottom_navbar_screens/music_screen.dart';
import '../../bottom_navbar_screens/profile_screen.dart';
import '../../bottom_navbar_screens/sleep_screen.dart';

class Home extends StatefulWidget {
  Home({super.key});
  static const String routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> recommendedMode = [
    {
      "image": Assets.imagesRecommendedMode1,
      "title": "Focus",
      "bgcolor": AppColors.mainGreen,
    },
    {
      "image": Assets.imagesRecommendedMode2,
      "title": "Happiness",
      "bgcolor": AppColors.mainYellow,
    },
    {
      "image": Assets.imagesRecommendedMode1,
      "title": "Meditation",
      "bgcolor": AppColors.mainGreen,
    },
    {
      "image": Assets.imagesRecommendedMode2,
      "title": "Calmness",
      "bgcolor": AppColors.mainYellow,
    },
  ];

  // todo bottom nav bar
  int _selectedIndex = 0;
  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      _buildHomeContent(),
      SleepScreen(),
      MeditateScreen(),
      MusicScreen(),
      ProfileScreen(),
    ];
  }

  final List<IconData> _icons = [
    Icons.home_rounded,
    Icons.nightlight_round,
    Icons.spa,
    Icons.music_note,
    Icons.person,
  ];

  final List<String> _labels = ["Home", "Sleep", "Meditate", "Music", "Afsar"];

  Widget _buildHomeContent() {
    return HomeWidget(recommendedMode: recommendedMode);
  }

  @override
  Widget build(BuildContext context) {
    // Determine the background color based on the selected index
    final bottomNavBarColor =
        _selectedIndex == 1
            ? AppColors.sleepColor
            : Colors.white; // Use sleepColor from AppColors

    return Scaffold(
      body: _screens[_selectedIndex],

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: bottomNavBarColor, // Apply conditional background color
          border: Border(top: BorderSide(color: Colors.grey.shade300)),
        ),
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_icons.length, (index) {
            bool isSelected = _selectedIndex == index;
            return GestureDetector(
              // Ensure the tap area covers the whole item
              behavior: HitTestBehavior.opaque,
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration:
                        isSelected &&
                                index !=
                                    1 // Don't show circle for sleep tab when selected
                            ? BoxDecoration(
                              color: Colors.deepPurple.shade100,
                              shape: BoxShape.circle,
                            )
                            : null,
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      _icons[index],
                      color:
                          isSelected
                              ? (index == 1
                                  ? Colors
                                      .white // White icon for selected Sleep on dark bg
                                  : Colors.deepPurple) // Default selected color
                              : Colors
                                  .grey
                                  .shade600, // Default unselected color
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _labels[index],
                    style: TextStyle(
                      fontSize: 13,
                      color:
                          isSelected
                              ? (index == 1
                                  ? Colors
                                      .white // White text for selected Sleep on dark bg
                                  : Colors.deepPurple) // Default selected color
                              : Colors
                                  .grey
                                  .shade600, // Default unselected color
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key, required this.recommendedMode});

  final List<Map<String, dynamic>> recommendedMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100.h),
            Center(child: Image.asset(Assets.imagesLogo)),
            SizedBox(height: 40.h),
            Text(
              'Good Morning, Yoora',
              style: TextStyle(
                color: const Color(0xFF3F414E),
                fontSize: 28,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w700,
                height: 1.08,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'We Wish you have a good day',
              style: TextStyle(
                color: const Color(0xFFA0A3B2),
                fontSize: 20.sp,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w300,
                height: 1.08,
              ),
            ),
            SizedBox(height: 30.h),

            SizedBox(
              height: 230.h,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      TopHomeCard(
                        title: 'Basics',
                        subtitle: 'COURSE',
                        image: Assets.imagesTophome1,
                        textColor: AppColors.mainWhite,
                        btnColor: AppColors.mainWhite,
                        bgColor: AppColors.mainPurple,
                        btnTextColor: AppColors.mainBlack,
                      ),
                      SizedBox(width: 20.w),
                      TopHomeCard(
                        title: 'Relaxation',
                        subtitle: 'MUSIC',
                        image: Assets.imagesTophome3,
                        textColor: AppColors.mainBlack,
                        btnColor: AppColors.mainBlack,
                        bgColor: AppColors.mainYellow,
                        btnTextColor: AppColors.mainWhite,
                      ),
                      SizedBox(width: 20.w),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150.h,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.mainBlack,
                  ),
                ),
                Positioned(
                  top: 20.h,
                  left: 20.w,

                  child: Image.asset(
                    Assets.imagesVector1,
                    width: 200.w,
                    height: 100.h,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  top: 10.h,
                  right: 10.w,

                  child: Image.asset(
                    Assets.imagesVector2,
                    width: 200.w,
                    height: 100.h,
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  top: 30.h,
                  bottom: 2.w,
                  right: 100.w,

                  child: Image.asset(
                    Assets.imagesEllipse8,
                    width: 200.w,
                    height: 100.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 55.h,
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
                              color: Colors.white,
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
                                  color: const Color(0xFFEBEAEC),
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

            SizedBox(height: 40.h),
            Text(
              'Recomended for you',
              style: TextStyle(
                color: const Color(0xFF3F414E),
                fontSize: 24,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w400,
                height: 1.08,
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 200.50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return RecommendedMode(
                    image: recommendedMode[index]['image'],
                    bgcolor: recommendedMode[index]['bgcolor'],
                    title: recommendedMode[index]['title'],
                  );
                },
              ),
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}

class RecommendedMode extends StatelessWidget {
  const RecommendedMode({
    super.key,
    required this.image,
    required this.title,
    required this.bgcolor,
  });
  final String image;
  final String title;
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 162,
            height: 140.50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgcolor,
            ),
            child: Image.asset(image),
          ),
          SizedBox(height: 10.h),
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF3F414E),
              fontSize: 18,
              fontFamily: 'HelveticaNeue',
              fontWeight: FontWeight.w700,
              height: 1.08,
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(
                'MEDITATION',
                style: TextStyle(
                  color: AppColors.mainGrey,
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
                  color: AppColors.mainGrey,
                  shape: OvalBorder(),
                ),
              ),
              SizedBox(width: 5.h),
              Text(
                '3-10 MIN',
                style: TextStyle(
                  color: AppColors.mainGrey,
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
    );
  }
}
