import 'package:flutter/material.dart';

import '../../../../utils/constraints.dart';
import '../../../../utils/k_images.dart';
import '../../../../utils/utils.dart';
import '../../../../widgets/custom_image.dart';
import '../../../../widgets/custom_text.dart';
import '../extra_addons_button.dart';

class IngredientTabContent extends StatelessWidget {
  const  IngredientTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Ingredients',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: blackColor,
                ),
                CustomText(
                  text: '6 Items',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: grayColor,
                ),
              ],
            ),
            CustomText(
              text: 'Add to Cart All',
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: redColor,
            ),
          ],
        ),
        Utils.verticalSpace(20.0),
        ...List.generate(
          4,
          (index) => Container(
            padding: Utils.symmetric(h: 4.0, v: 8.0),
            margin: Utils.only(bottom: 10.0),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: Utils.borderRadius(),
              boxShadow: boxShadow,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 8.0),
                  child: Container(
                    height: Utils.vSize(50.0),
                    width: Utils.hSize(50.0),
                    margin: Utils.only(right: 6.0),
                    child: ClipRRect(
                      borderRadius: Utils.borderRadius(r: 6.0),
                      child: const CustomImage(
                        path: KImages.featuredImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Flexible(
                  fit: FlexFit.loose,
                  child: CustomText(
                    text: 'Chicken Leg (\$30)',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const ExtraAddonButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
