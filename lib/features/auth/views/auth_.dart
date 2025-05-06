import 'package:flutter/material.dart';
import 'package:meditation_app/core/config/app_sizes.dart';
import 'package:meditation_app/core/config/assets.dart';
import 'package:meditation_app/core/widgets/custom_btn.dart';

import '../../../core/config/app_colors.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  static const routeName = '/auth';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: AppSizes.screenWidth(context),
        height: AppSizes.screenHeight(context),
        child: Padding(
          padding: EdgeInsets.only(top: 100, bottom: 80),
          child: Column(
            children: [
              Image.asset(Assets.imagesLogo, fit: BoxFit.cover),
              const SizedBox(height: 84),
              Image.asset(Assets.imagesAuth, fit: BoxFit.cover),
              const SizedBox(height: 32),
              SizedBox(
                width: 274,
                height: 42,
                child: Text(
                  'We are what we do\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF3F414E),
                    fontSize: 30,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w700,
                    height: 1.35,
                  ),
                ),
              ),
              Text(
                'Thousand of people are usign silent moon  \nfor smalls meditation ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFA1A4B2),
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w300,
                  height: 1.65,
                ),
              ),
              const SizedBox(height: 62),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.mainPadding,
                ),
                child: CustomBtn(
                  btnTitle: 'Get Started',
                  bgColor: AppColors.mainPurple,
                  textColor: AppColors.mainWhite,
                  onPressed: () {
                    // Handle the button press here
                    Navigator.pushNamed(context, '/sign-up');
                  },
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Handle the tap event here
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: SizedBox(
                  width: 282,
                  height: 14,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'ALREADY HAVE AN ACCOUNT?',
                          style: TextStyle(
                            color: const Color(0xFFA1A4B2),
                            fontSize: 14,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w400,
                            height: 1.08,
                            letterSpacing: 0.70,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w400,
                            height: 1.08,
                            letterSpacing: 0.70,
                          ),
                        ),
                        TextSpan(
                          text: 'LOG IN',
                          style: TextStyle(
                            color: AppColors.mainPurple,
                            fontSize: 14,
                            fontFamily: 'HelveticaNeue',
                            fontWeight: FontWeight.w400,
                            height: 1.08,
                            letterSpacing: 0.70,
                          ),
                        ),
                      ],
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
