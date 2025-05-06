// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/config/app_sizes.dart';
import 'package:meditation_app/core/widgets/custom_btn.dart';

import '../../../core/config/assets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  static const routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: AppSizes.screenWidth(context),
          height: AppSizes.screenHeight(context),
          color: AppColors.mainPurple,
          child: Stack(
            children: [
              Positioned(
                top: AppSizes.screenHeight(context) * 0.12,
                left: 0,
                right: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  child: Center(child: Image.asset(Assets.imagesLogo)),
                ),
              ),
              Positioned(
                top: AppSizes.screenHeight(context) * 0.20,
                left: 0,
                right: 0,
                child: Text(
                  'Hi Yoora, Welcome \n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.mainYellow,
                    fontSize: 30,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w700,

                    height: 1.37,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
              Positioned(
                top: AppSizes.screenHeight(context) * 0.25,
                left: 0,
                right: 0,
                child: Text(
                  'to Silent Moon',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.mainYellow,
                    fontSize: 30,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                    height: 1.37,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
              Positioned(
                top: AppSizes.screenHeight(context) * 0.32,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'Explore the app, Find some peace of mind to prepare for meditation.',

                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFEBEAEC),
                      fontSize: 16,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: AppSizes.screenHeight(context) * 0.36,
                left: 10,
                child: Opacity(
                  opacity: 0.8,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(Assets.imagesBird),
                  ),
                ),
              ),
              Positioned(
                top: AppSizes.screenHeight(context) * 0.40,
                right: 10,
                child: Opacity(
                  opacity: 0.8,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(Assets.imagesBird),
                  ),
                ),
              ),
              Positioned(
                top: AppSizes.screenHeight(context) * 0.40,
                left: 10,

                child: Opacity(
                  opacity: 0.7,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(Assets.imagesCloud),
                  ),
                ),
              ),

              Positioned(
                top: AppSizes.screenHeight(context) * 0.45,
                left: 0,
                right: 0,
                child: Container(
                  width: 354,
                  height: 354,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF9EA5FF),
                    shape: OvalBorder(),
                  ),
                ),
              ),

              Positioned(
                top: AppSizes.screenHeight(context) * 0.47,
                left: 0,
                right: 0,
                child: Container(
                  width: 252.46,
                  height: 247.79,
                  child: Image.asset(Assets.imagesWelcome),
                ),
              ),

              Positioned(
                top: AppSizes.screenHeight(context) * 0.50,
                right: 20,
                child: Opacity(
                  opacity: 1,
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset(Assets.imagesCloud),
                  ),
                ),
              ),

              Positioned(
                top: AppSizes.screenHeight(context) * 0.73,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: 416,
                  height: 266,
                  child: Image.asset(Assets.imagesWelcomeBottom),
                ),
              ),
              Positioned(
                top: AppSizes.screenHeight(context) * 0.83,
                left: 0,
                right: 0,
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.mainPadding,
                    ),
                    child: CustomBtn(
                      btnTitle: 'Get Started',
                      bgColor: AppColors.mainWhite,
                      textColor: AppColors.mainBlack,
                      onPressed: () {
                        Navigator.pushNamed(context, '/topics');
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
