import 'package:flutter/material.dart';

import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text.dart';
import '../../details/component/extra_addons_button.dart';

class CartComponent extends StatelessWidget {
  const CartComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Utils.all(value: 10.0),
      margin: Utils.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: Utils.borderRadius(),
        boxShadow: boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: Utils.vSize(94.0),
            width: Utils.hSize(100.0),
            margin: Utils.only(right: 10.0),
            child: ClipRRect(
              borderRadius: Utils.borderRadius(r: 14.0),
              child: const CustomImage(
                path: KImages.featuredImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                    text: 'Quinoa With Bell  Spicy Peppery taste is Yummy!',
                    fontSize: 14.0,
                    maxLine: 2,
                    height: 1.6,
                    fontWeight: FontWeight.w500),
                Container(
                  height: 1.0,
                  margin: Utils.symmetric(h: 0.0, v: 6.0),
                  color: grayColor.withOpacity(0.2),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomImage(
                        path: KImages.currencyIcon, color: redColor),
                    Utils.horizontalSpace(2.0),
                    CustomText(
                      text: Utils.formatPrice(context, 240),
                      color: redColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const ExtraAddonButton(),
        ],
      ),
    );
  }

// Widget _deleteButton() {
//   return Container(
//     padding: Utils.all(value: 5.0),
//     alignment: Alignment.center,
//     margin: Utils.symmetric(h: 10.0),
//     decoration: BoxDecoration(
//       color: redColor,
//       borderRadius: Utils.borderRadius(),
//     ),
//     child: const Icon(
//       Icons.delete,
//       color: whiteColor,
//     ),
//   );
// }
}
