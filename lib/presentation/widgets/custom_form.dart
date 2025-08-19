import 'package:flutter/material.dart';

import '../utils/constraints.dart';
import '../utils/utils.dart';
import 'custom_image.dart';
import 'custom_text.dart';

class CustomForm extends StatelessWidget {
  final String label;
  final Widget child;
  final double bottomSpace;

  const CustomForm({
    super.key,
    required this.label,
    required this.child,
    this.bottomSpace = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: label, color: blackColor, fontWeight: FontWeight.w500),
        Utils.verticalSpace(10.0),
        child,
        Utils.verticalSpace(bottomSpace),
      ],
    );
  }
}

class PrefixIcon extends StatelessWidget {
  const PrefixIcon({super.key, required this.icon, this.iconColor});

  final String icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Utils.symmetric(h: 12.0).copyWith(right: 10.0),
      child: CustomImage(path: icon, color: iconColor),
    );
  }
}
