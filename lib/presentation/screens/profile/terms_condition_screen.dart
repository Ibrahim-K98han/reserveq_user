import 'package:flutter/material.dart';

import '../../../data/dummy_data/dummy_data.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

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
              const CustomSliverAppBar(title: 'Terms & Condition'),
              SliverPadding(
                padding: Utils.symmetric(h: 20.0, v: 20.0).copyWith(top: 8.0),
                sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      const CustomText(
                        text: '1. Eligibility',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: terms01,
                        color: grayColor,
                        height: 1.8,
                        maxLine: 20,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: '2. Cancellation & Refund',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: terms02,
                        color: grayColor,
                        height: 1.8,
                        maxLine: 20,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: '3. Term of Service of FDP',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: terms03,
                        color: grayColor,
                        height: 1.8,
                        maxLine: 20,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: '4. Cancellation of Order',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: terms04,
                        color: grayColor,
                        height: 1.8,
                        maxLine: 20,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: '5. Payment & Refunds',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: blackColor,
                      ),
                      Utils.verticalSpace(12.0),
                      const CustomText(
                        text: terms05,
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
