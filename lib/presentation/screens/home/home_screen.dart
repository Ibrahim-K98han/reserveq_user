import 'package:flutter/material.dart';

import '../../../presentation/utils/utils.dart';
import '../../utils/k_images.dart';
import '../../widgets/custom_image.dart';
import 'component/banner_slider.dart';
import 'component/category_grid_view.dart';
import 'component/featured_food_view.dart';
import 'component/home_app_bar.dart';
import 'component/hot_deals_banner_slider.dart';
import 'component/new_arrival_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
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
              const HomeAppBar(),
              const BannerSlider(),
              const CategoryGridView(),
              const FeaturedFoodView(),
              const HotDealBannerSlider(),
              const FeaturedFoodView(heading: 'Most Popular'),
              SliverToBoxAdapter(
                child: Utils.verticalSpace(size.height * 0.02),
              ),
              const NewArrivalView(),
              SliverToBoxAdapter(
                child: Utils.verticalSpace(size.height * 0.13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
