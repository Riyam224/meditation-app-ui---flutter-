import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/config/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },

                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.mainPurple,
                    ),
                  ),

                  Icon(Icons.file_open_rounded, color: AppColors.mainPurple),
                ],
              ),
              SizedBox(height: 50.h),
              Container(
                width: 100,
                height: 100,

                child: Image.network(
                  'https://static.vecteezy.com/system/resources/previews/011/431/373/non_2x/user-practicing-mindfulness-meditation-in-lotus-pose-mindful-meditating-mental-calmness-and-self-consciousness-focusing-and-releasing-stress-concept-flat-modern-illustration-vector.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Yoora Vibe',
                style: TextStyle(
                  color: AppColors.mainBlack,
                  fontSize: 24,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                  height: 1.08,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                '@yoora_vibe',
                style: TextStyle(
                  color: AppColors.mainPurple,
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                  height: 1.08,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.mainPurple, width: 2),
                ),
                child: Center(child: Text('Edit Profile')),
              ),
              SizedBox(height: 40),
              Container(
                width: 400,
                height: 50,
                color: AppColors.mainPurple.withOpacity(0.2),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Icon(Icons.supervised_user_circle_outlined),
                      SizedBox(width: 20),
                      Text('yoora tech vibe '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 400,
                height: 50,
                color: AppColors.mainPurple.withOpacity(0.2),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 20),
                      Text('yooratech1211@gmail.com '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 400,
                height: 50,
                color: AppColors.mainPurple.withOpacity(0.2),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 20),
                      Text('002-2119-1585-2010'),
                    ],
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
