// ignore_for_file: use_key_in_widget_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/config/app_sizes.dart';
import 'package:meditation_app/core/config/assets.dart';

class GridItem {
  final String title;
  final double height;
  final double width;
  final Color color;
  final String image; // asset path for the image
  final Color textColor; // Dynamic text color

  GridItem({
    required this.title,
    required this.height,
    required this.width,
    required this.color,
    required this.image,
    required this.textColor,
  });
}

class Topics extends StatelessWidget {
  @override
  static const routeName = '/topics';
  final List<GridItem> items = [
    GridItem(
      title: 'Reduce Stress',
      width: 176.43,
      height: 180,
      color: AppColors.mainPurple,
      image: Assets.imagesItem1,
      textColor: AppColors.mainYellow,
    ),
    GridItem(
      title: 'Increase Happiness',
      width: 176.43,
      height: 167,
      color: Color(0xffFEB18F),
      image: Assets.imagesItem2,
      textColor: Colors.black,
    ),
    GridItem(
      title: 'Personal Growth',
      height: 100,
      width: 140,
      color: Color(0xff6CB28E),
      image: Assets.imagesItem3,
      textColor: Colors.white,
    ),
    GridItem(
      title: 'Improve Productivity',
      height: 100,
      width: 140,
      color: Color(0xffFA6E5A),
      image: Assets.imagesItem4,
      textColor: Colors.black,
    ),
    GridItem(
      title: 'Reduce Anxiety',
      height: 100,
      width: 140,
      color: Color(0xffFFCF86),
      image: Assets.imagesItem5,
      textColor: AppColors.mainBlack,
    ),
    GridItem(
      title: 'Better Sleep',
      height: 100,
      width: 140,
      color: Color(0xff3F414E),
      image: Assets.imagesItem6,
      textColor: Colors.white,
    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: AppSizes.mainPadding,
          right: AppSizes.mainPadding,
          top: 80,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'What Brings you\n',
                      style: TextStyle(
                        color: const Color(0xFF3F414E),
                        fontSize: 28,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w700,
                        height: 1.35,
                      ),
                    ),
                    TextSpan(
                      text: 'to Silent Moon?',
                      style: TextStyle(
                        color: const Color(0xFF3F414E),
                        fontSize: 28,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w300,
                        height: 1.35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),
              Text(
                'choose a topic to focus on:',
                style: TextStyle(
                  color: const Color(0xFFA1A4B2),
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 6),
              GestureDetector(
                onTap: () {
                  // Handle tap on the grid item
                  Navigator.pushNamed(context, '/time-to-meditate');
                },
                child: MasonryGridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Container(
                      height: item.height * 1.6,
                      decoration: BoxDecoration(
                        color: item.color,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Display the image from the asset path
                          Image.asset(
                            item.image,
                            width: item.width * 0.8,
                            height: item.height * 0.5,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 16),
                          // Display the title text with dynamic color
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              item.title,
                              style: TextStyle(
                                color: item.textColor, // Dynamic text color
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
      ),
    );
  }
}
