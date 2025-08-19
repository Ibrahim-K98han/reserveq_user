import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/dummy_data/dummy_data.dart';
import '../../../utils/constraints.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text.dart';

class SingleCategoryCard extends StatelessWidget {
  const SingleCategoryCard({
    Key? key,
    required this.category,
    this.isBoxShadow = true,
    this.height = 140.0,
  }) : super(key: key);

  final DummyCategoryModel category;
  final bool isBoxShadow;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Utils.vSize(height),
      width: Utils.vSize(height),
      margin: Utils.only(right: 10.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: Utils.borderRadius(),

      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: Utils.only(bottom: 0.0),
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffE8EEF2),
            ),
            child: Center(child: CustomImage(path: category.icon)),
          ),
          CustomText(
            text: category.name,
            fontWeight: FontWeight.w600,
            fontSize: 12.0,
            textAlign: TextAlign.center,
          ),
          Utils.verticalSpace(4.0),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 4.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 4),
              CustomText(
                text: '24 Items',
                fontWeight: FontWeight.w500,
                fontSize: 10.0,
                textAlign: TextAlign.center,
                color: grayColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
