import 'package:flutter/material.dart';

import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text.dart';

class ExtraAddonButton extends StatelessWidget {
  const ExtraAddonButton({super.key});

  @override
  Widget build(BuildContext context) {
    const double height = 24.0;
    const double width = 24.0;
    return Padding(
      padding: Utils.symmetric(h: 6.0).copyWith(left: 10.0),
      child: Row(
        children: [
          _buttonWidget(
            const CustomImage(
              path: KImages.minusIcon,
            ),
            grayColor.withOpacity(0.4),
          ),
          _buttonWidget(
            const CustomText(
              text: '2',
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
            transparent,
          ),
          _buttonWidget(
            const CustomImage(
              path: KImages.plusIcon,
            ),
            redColor,
          ),
        ],
      ),
    );
  }

  Widget _buttonWidget(Widget child, Color borderColor) {
    return InkWell(
      onTap: () => print('button pressing...'),
      child: Container(
        height: Utils.vSize(25.0),
        width: Utils.vSize(25.0),
        alignment: Alignment.center,
        margin: Utils.all(value: 2.0),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: Utils.borderRadius(r: 4.0),
        ),
        child: child,
      ),
    );
  }
}
