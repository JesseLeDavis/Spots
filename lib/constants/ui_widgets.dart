import 'package:flutter/material.dart';
import 'package:spots/constants/sizes.dart';
import 'package:spots/shared/themes/color_themes.dart';

class DragIcon extends StatelessWidget {
  const DragIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        gapH16,
        Container(
          height: 5,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorThemes.darkGrey),
        ),
      ],
    );
  }
}
