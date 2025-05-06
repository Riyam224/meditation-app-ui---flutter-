import 'package:flutter/material.dart';

import '../../../core/config/assets.dart';

class CustomTopBanner extends StatelessWidget {
  const CustomTopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(Assets.imagesVector, fit: BoxFit.cover),
            Transform.rotate(
              angle: 20, // radians (e.g., 0.2 rad ≈ 11.5 degrees)
              child: Image.asset(Assets.imagesVector, fit: BoxFit.cover),
            ),
          ],
        ),
        Positioned(
          top: 80,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),

            child: Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
      ],
    );
  }
}
