import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constraints.dart';
import '../utils/utils.dart';
import 'custom_image.dart';
import 'custom_text.dart';

class FeedBackDialog extends StatelessWidget {
  const FeedBackDialog({
    Key? key,
    required this.image,
    required this.message,
    required this.child,
    this.height = 230.0,
    this.radius = 10.0,
  }) : super(key: key);
  final String image;
  final String message;
  final Widget child;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 4.0,
      insetPadding: Utils.all(),
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: SizedBox(
        width: Utils.hSize(300.0),
        height: 280.h,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -70.0,
              child: Container(
                padding: Utils.all(value: 24.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor.withOpacity(0.2),
                ),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CustomImage(
                        path: image,
                        height: 40.0,
                        width: 45.0,
                        color: whiteColor),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 60.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Utils.verticalSpace(16),
                    CustomText(
                      text: message,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0,
                      textAlign: TextAlign.center,
                      color: const Color(0xFF162B49),
                    ),
                    Utils.verticalSpace(10),
                    child,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
