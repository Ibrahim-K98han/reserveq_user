import 'package:flutter/material.dart';
import '/presentation/utils/constraints.dart';
import '/presentation/utils/utils.dart';
import '../../../widgets/custom_text.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.title1,
    this.title2 = 'See All',
    this.onTap,
    this.seeAllVisible = true,
    this.padding = 0.0,
    this.child = const SizedBox(),
  }) : super(key: key);
  final String title1;
  final String title2;
  final VoidCallback? onTap;
  final bool seeAllVisible;
  final Widget child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Utils.symmetric(v: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title1,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: blackColor,
          ),
          seeAllVisible
              ? GestureDetector(
                onTap: onTap,
                child: Row(
                  children: [
                    CustomText(
                      text: title2,
                      fontSize: 14.0,
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    Utils.horizontalSpace(5.0),
                    Padding(
                      padding: Utils.only(top: 2.0),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: primaryColor,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
              )
              : child,
        ],
      ),
    );
  }
}
