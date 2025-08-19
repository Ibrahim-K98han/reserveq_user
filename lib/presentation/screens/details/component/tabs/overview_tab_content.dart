import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../../../../data/dummy_data/dummy_data.dart';
import '../../../../utils/constraints.dart';
import '../../../../utils/utils.dart';
import '../../../../widgets/custom_text.dart';

class OverViewTabContent extends StatelessWidget {
  const OverViewTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    final extraItems = [
      'Chicken',
      'Bread',
      'Extra Chess',
      'Salad',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: 'About Food',
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
        ),
        ReadMoreText(
          privacy02,
          trimLength: 100,
          trimCollapsedText: 'View More',
          moreStyle: GoogleFonts.plusJakartaSans(
              fontSize: 14.0, color: redColor, height: 1.6),
          lessStyle: GoogleFonts.plusJakartaSans(
              fontSize: 14.0, color: redColor, height: 1.6),
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16.0, color: grayColor, height: 1.6),
        ),
        Utils.verticalSpace(10.0),
        ...List.generate(
            extraItems.length, (index) => _extraItems(extraItems[index])),
        Utils.verticalSpace(10.0),
        const CustomText(
          text: terms03,
          fontSize: 14.0,
          color: grayColor,
        ),
      ],
    );
  }

  Widget _extraItems(String text) {
    return Padding(
      padding: Utils.only(bottom: 6.0),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: primaryColor,
            size: 20.0,
          ),
          Utils.horizontalSpace(10.0),
          CustomText(
            text: text,
            fontSize: 14.0,
            color: grayColor,
          ),
        ],
      ),
    );
  }
}
