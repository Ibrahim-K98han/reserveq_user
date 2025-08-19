import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/favourite_button.dart';

class SingleNewArrivalCard extends StatelessWidget {
  const SingleNewArrivalCard({super.key, this.isVisibleRightChild = true});

  final bool isVisibleRightChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Utils.symmetric(h: 8.0, v: 10.0),
      margin: Utils.symmetric(v: 10.0, h: 20.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: Utils.borderRadius(),
        boxShadow: boxShadow,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: Utils.hSize(120.0),
                padding: Utils.symmetric(h: 0.0, v: 0.0),
                child: ClipRRect(
                  borderRadius: Utils.borderRadius(r: 10.0),
                  child: const CustomImage(
                    path: KImages.featuredImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                top: 10.0,
                left: 10.0,
                child: PercentageOffer(value: '-25%'),
              ),
            ],
          ),
          Utils.horizontalSpace(10.0),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Flexible(
                  fit: FlexFit.loose,
                  child: CustomText(
                    text:
                        'Healthy Taco Salad with fresh vegetable with masala cheese',
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                    maxLine: 2,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 24.w,
                    height: 24.h,
                    padding: Utils.symmetric(h: 4.0, v: 4.0),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: whiteColor,
                      size: 14,
                    ),
                  ),
                ),
                Container(
                  height: 0.8,
                  margin: Utils.only(left: 0, right: 35, top: 5, bottom: 5),
                  color: grayColor.withOpacity(0.1),
                ),
                Utils.horizontalSpace(8),
                Utils.verticalSpace(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomText(
                          text: Utils.formatPrice(context, 240),
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const CustomImage(path: KImages.star),
                        Utils.horizontalSpace(5.0),
                        const CustomText(text: '4.7 '),
                        const CustomText(text: '(2.5K)', color: grayColor),
                      ],
                    ),
                  ],
                ),
                Utils.verticalSpace(0),
              ],
            ),
          ),
          // isVisibleRightChild
          //     ? Container(
          //         // height: Utils.vSize(35.0),
          //         // width: Utils.vSize(35.0),
          //         margin: Utils.only(left: 10.0),
          //         padding: Utils.all(value: 4.0),
          //         //alignment: Alignment.center,
          //         decoration: BoxDecoration(
          //           color: primaryColor,
          //           borderRadius: Utils.borderRadius(r: 6.0),
          //         ),
          //         child: const Icon(
          //           Icons.arrow_forward,
          //           color: whiteColor,
          //           size: 20.0,
          //         ),
          //       )
          //     : const SizedBox(),
        ],
      ),
    );
  }
}
