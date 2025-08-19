import 'package:flutter/material.dart';

import '../../../data/dummy_data/dummy_data.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomImage(
            path: KImages.allScreenBg,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: [
              const CustomSliverAppBar(title: 'Privacy & Policy'),
              SliverPadding(
                padding: Utils.symmetric(h: 20.0, v: 20.0).copyWith(top: 8.0),
                sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      const CustomText(
                        text: '1. Types of Data We Collect',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: privacy01,
                        color: grayColor,
                        height: 1.8,
                        maxLine: 20,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: '2. Use of Your Personal Data',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: privacy02,
                        color: grayColor,
                        height: 1.8,
                        maxLine: 20,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: '3. Disclosure of Your Personal Data',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: privacy03,
                        color: grayColor,
                        height: 1.8,
                        maxLine: 20,
                      ),
                    ])),
              ),
            ],
          ),
        ],
      )
    );
  }
}
