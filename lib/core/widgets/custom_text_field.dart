import 'package:flutter/material.dart';
import 'package:meditation_app/core/config/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.iconColor,
    this.fillColor,
  });
  final String hintText;
  final IconData? icon;
  final Color? iconColor;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: fillColor ?? AppColors.mainLightGrey,
        suffixIcon: Icon(icon, color: iconColor),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
          borderSide: BorderSide.none, // No visible border
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.mainLightGrey, // Border color on focus
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
