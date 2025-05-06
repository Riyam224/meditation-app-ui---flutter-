import 'package:flutter/material.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/config/app_sizes.dart';
import 'package:meditation_app/core/widgets/custom_btn.dart';
import 'package:meditation_app/core/widgets/custom_text_field.dart';
import '../widgets/custom_top_banner.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.mainPadding),
          child: Column(
            children: [
              CustomTopBanner(),
              SizedBox(height: 30),
              Text(
                'Create your account ',
                style: TextStyle(
                  color: const Color(0xFF3F414E),
                  fontSize: 28,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w700,
                  height: 1.35,
                ),
              ),
              SizedBox(height: 30),

              CustomBtn(
                textColor: AppColors.mainWhite,
                bgColor: AppColors.mainBlue,

                btnTitle: 'CONTINUE WITH FACEBOOK',

                onPressed: () {},
              ),
              SizedBox(height: AppSizes.mainPadding),
              CustomBtn(
                bgColor: AppColors.mainWhite,
                btnTitle: 'CONTINUE WITH GOOGLE',

                onPressed: () {},
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 188.54,
                height: 14,
                child: Text(
                  'OR LOG IN WITH EMAIL',
                  style: TextStyle(
                    color: const Color(0xFFA1A4B2),
                    fontSize: 14,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w700,
                    height: 1.08,
                    letterSpacing: 0.70,
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomTextField(
                hintText: 'afsar',
                icon: Icons.check,
                iconColor: AppColors.mainGreen,
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: 'imshuvo97@gmail.com',
                icon: Icons.check,
                iconColor: AppColors.mainGreen,
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: '*********',
                icon: Icons.visibility_off,
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 218.76,
                      height: 16.90,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'i have read the',
                              style: TextStyle(
                                color: AppColors.mainLightGrey,
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
                                color: const Color(0xFFFA6E5A),
                                fontSize: 14,
                                fontFamily: 'HelveticaNeue',
                                fontWeight: FontWeight.w400,
                                height: 1.08,
                                letterSpacing: 0.70,
                              ),
                            ),
                            TextSpan(
                              text: 'Privace Policy',
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

                    Container(
                      width: 24.17,
                      height: 24.17,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            color: AppColors.mainLightGrey,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              CustomBtn(
                btnTitle: 'GET STARTED',
                bgColor: AppColors.mainPurple,
                textColor: AppColors.mainWhite,
                onPressed: () {
                  Navigator.pushNamed(context, '/welcome');
                },
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
