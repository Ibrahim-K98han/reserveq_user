import 'package:flutter/material.dart';

import '../utils/constraints.dart';
import '../utils/utils.dart';
import 'custom_text.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({Key? key, required this.productId}) : super(key: key);
  final int productId;
  final double height = 28;
  final bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: Utils.vSize(height),
        width: Utils.vSize(height),
        padding: Utils.all(value: 4.0),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: Utils.borderRadius(r: 6.0),
        ),
        child: const FittedBox(child: Icon(Icons.favorite, color: redColor)),
      ),
    );
  }
}

class PercentageOffer extends StatelessWidget {
  const PercentageOffer({super.key, required this.value});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Utils.symmetric(h: 8.0, v: 5.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: blackColor.withOpacity(0.8),
        borderRadius: Utils.borderRadius(r: 6.0),
      ),
      child: Padding(
        padding: Utils.only(bottom: 2.0),
        child: CustomText(
          text: value,
          color: whiteColor,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
