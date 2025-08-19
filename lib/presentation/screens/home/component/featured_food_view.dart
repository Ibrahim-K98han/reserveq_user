import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../routes/route_names.dart';
import '../../../utils/utils.dart';
import 'heading.dart';
import 'single_food_card.dart';

class FeaturedFoodView extends StatelessWidget {
  const FeaturedFoodView({super.key, this.heading = 'Our Featured Food'});

  final String heading;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Heading(
            title1: heading,
            padding: 20.0,
            onTap: () =>
                Navigator.pushNamed(context, RouteNames.featureFoodScreen),
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                10,
                (index) => Padding(
                  padding: Utils.only(left: index == 0 ? 10.0 : 0.0),
                  child: GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, RouteNames.detailsScreen),
                      child: const SingleFoodCard()),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
