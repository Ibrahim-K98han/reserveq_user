import 'package:flutter/material.dart';

import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import 'component/single_new_arrival_card.dart';

class NewArrivalScreen extends StatelessWidget {
  const NewArrivalScreen({super.key});

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
            slivers: [
              const CustomSliverAppBar(title: 'New Arrival'),
              SliverPadding(
                padding: Utils.symmetric(h: 0.0),
                sliver: SliverList.list(
                  children: List.generate(
                    10,
                    (index) => const SingleNewArrivalCard(),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: Utils.verticalSpace(30.0)),
            ],
          ),
        ],
      ),
    );
  }
}
