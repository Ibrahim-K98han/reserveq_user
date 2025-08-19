import 'package:flutter/material.dart';

import '../../../data/dummy_data/dummy_data.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import 'component/single_category_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
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
              const CustomSliverAppBar(title: 'Our Category'),
              SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverPadding(
                padding: Utils.symmetric(h: 20.0),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    // mainAxisExtent: 120.0,
                    //childAspectRatio: 1.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) => SingleCategoryCard(
                      category: categoryList[index],
                      // height: 100.0,
                    ),
                    childCount: categoryList.take(8).length,
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
