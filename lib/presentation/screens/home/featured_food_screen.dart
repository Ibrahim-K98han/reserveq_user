import 'package:flutter/material.dart';

import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import 'component/single_food_card.dart';

class FeatureFoodScreen extends StatelessWidget {
  const FeatureFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
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
              const CustomSliverAppBar(title: 'Feature Food'),
              SliverToBoxAdapter(child: Utils.verticalSpace(10),),
              SliverPadding(
                padding: Utils.symmetric(h: 6.0),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 260.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) => const SingleFoodCard(),
                    childCount: 10,
                  ),
                ),
              ),
              SliverToBoxAdapter(child: Utils.verticalSpace(30.0)),
            ],
          ),
        ],
      )
    );
  }
}
