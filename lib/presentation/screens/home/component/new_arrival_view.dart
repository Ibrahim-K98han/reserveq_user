import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../routes/route_names.dart';
import 'heading.dart';
import 'single_new_arrival_card.dart';

class NewArrivalView extends StatelessWidget {
  const NewArrivalView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Heading(
            title1: 'New Arrival',
            padding: 20.0,
            onTap: () =>
                Navigator.pushNamed(context, RouteNames.newArrivalScreen),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: List.generate(
              6,
              (index) => GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, RouteNames.detailsScreen),
                  child: const SingleNewArrivalCard()),
            ),
          ),
        ),
      ],
    );
  }
}
