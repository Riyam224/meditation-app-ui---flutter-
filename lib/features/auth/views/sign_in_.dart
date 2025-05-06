import 'package:flutter/material.dart';
import 'package:meditation_app/core/config/app_colors.dart';
import 'package:meditation_app/core/config/app_sizes.dart';
import 'package:meditation_app/core/widgets/custom_btn.dart';
import 'package:meditation_app/core/widgets/custom_text_field.dart';

import '../widgets/custom_top_banner.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  static const routeName = '/sign-in';

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
                'Welcome Back!',
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
              CustomTextField(hintText: 'Email address'),
              SizedBox(height: 20),
              CustomTextField(hintText: 'Password'),
              SizedBox(height: 30),
              CustomBtn(
                btnTitle: 'LOG IN',
                bgColor: AppColors.mainPurple,
                textColor: AppColors.mainWhite,
                onPressed: () {},
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 134.54,
                height: 14,
                child: Text(
                  'Forgot Password?',
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
              SizedBox(height: 40),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/sign-up'),
                child: SizedBox(
                  width: 293.10,
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
                          text: 'SIGN UP',
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
