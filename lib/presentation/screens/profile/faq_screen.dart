import 'package:flutter/material.dart';

import '../../../data/dummy_data/dummy_data.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';
import 'component/single_expansion_tile.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final faqTitle = [
      "What is ReservQ ?",
      "How to use ReservQ ?",
      "How to Cancel a Booking?",
      "Is ReservQ Free to use?",
      "How to Offer on ReservQ",
    ];
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
            slivers: [
              const CustomSliverAppBar(title: 'FAQ'),
              SliverList.list(
                children: List.generate(
                  faqTitle.length,
                  (index) => SingleExpansionTile(
                    heading: faqTitle[index],
                    isExpand: index == 0,
                    child: Column(
                      children: [
                        Container(
                          color: grayColor.withOpacity(0.3),
                          height: 1.0,
                        ),
                        Utils.verticalSpace(6.0),
                        Padding(
                          padding: Utils.only(bottom: 12.0),
                          child: const CustomText(
                            text: faqText,
                            color: grayColor,
                            height: 1.6,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
