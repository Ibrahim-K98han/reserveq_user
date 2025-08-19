import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../data/dummy_data/dummy_data.dart';
import '../../../routes/route_names.dart';
import '../../../utils/utils.dart';
import 'heading.dart';
import 'single_category_card.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Heading(
            title1: 'Our Categories',
            padding: 20.0,
            onTap: () =>
                Navigator.pushNamed(context, RouteNames.categoryScreen),
          ),
        ),
        // SliverToBoxAdapter(child: Utils.verticalSpace(20.0)),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                categoryList.take(5).length,
                (index) => Padding(
                  padding: Utils.only(left: index == 0 ? 20.0 : 0.0),
                  child: SingleCategoryCard(category: categoryList[index]),
                ),
              ),
            ),
          ),
        ),
        //SliverToBoxAdapter(child: Utils.verticalSpace(20.0)),
      ],
    );
  }
}
