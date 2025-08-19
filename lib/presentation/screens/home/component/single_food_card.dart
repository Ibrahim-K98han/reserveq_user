import 'package:flutter/material.dart';
import 'package:resturant_booking_user/presentation/routes/route_names.dart';

import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/favourite_button.dart';

class SingleFoodCard extends StatelessWidget {
  const SingleFoodCard({
    super.key,
    this.imageHeight = 140.0,
    this.imageWidth = 240.0,
  });

  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        //height: Utils.vSize(200.0),
        width: Utils.vSize(240.0),
        margin: Utils.only(right: 16.0),
        padding: Utils.symmetric(h: 10.0, v: 10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: Utils.borderRadius(),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  height: Utils.vSize(imageHeight),
                  width: Utils.hSize(imageWidth),
                  margin: Utils.only(bottom: 12.0),
                  child: ClipRRect(
                    borderRadius: Utils.borderRadius(r: 14.0),
                    child: const CustomImage(
                      path: KImages.featuredImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 10.0,
                  left: 10.0,
                  child: FavoriteButton(productId: 1),
                ),
                const Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: PercentageOffer(value: '-25%'),
                ),
              ],
            ),
            const Flexible(
              fit: FlexFit.loose,
              child: CustomText(
                text: 'Healthy Taco Salad with fresh vegetable',
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
                maxLine: 2,
              ),
            ),
            Container(
              height: 1.0,
              margin: Utils.symmetric(h: 0.0, v: 8.0),
              color: grayColor.withOpacity(0.1),
            ),
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.reviewScreen);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomImage(path: KImages.star),
                      Utils.horizontalSpace(5.0),
                      Row(
                        children: [
                          const CustomText(text: '4.7'),
                          CustomText(text: ' (2.5k)', color: grayColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
