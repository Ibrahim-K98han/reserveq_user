import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomText(
          text: 'FoodScreen',
        ),
      ),
    );
  }
}
