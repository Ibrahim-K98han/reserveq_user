import 'package:flutter/material.dart';

import '../../../utils/constraints.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.version = false,
  });

  final String icon;
  final String title;
  final bool version;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Utils.symmetric(v: 20.0).copyWith(bottom: 10.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImage(
                      path: icon,
                      fit: BoxFit.cover,
                    ),
                    Utils.horizontalSpace(12.0),
                    CustomText(
                      text: title,
                      color: blackColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                version
                    ? const CustomText(
                        text: '1.0.0',
                        color: blackColor,
                        fontSize: 16.0,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
