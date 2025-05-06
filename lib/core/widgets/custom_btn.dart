import 'package:flutter/material.dart';
import 'package:meditation_app/core/config/app_sizes.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.btnTitle,

    this.onPressed,
    this.bgColor,
    this.textColor,
  });
  final String btnTitle;

  final void Function()? onPressed;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: const Size(315, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.borderRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            btnTitle,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
