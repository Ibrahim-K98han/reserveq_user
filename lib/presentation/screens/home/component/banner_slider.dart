import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final double height = 164.0;
  final int initialPage = 0;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Utils.verticalSpace(20.0),
          CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1,
              initialPage: initialPage,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              clipBehavior: Clip.none,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            items:
                items
                    .map(
                      (e) => Container(
                        margin: Utils.symmetric(),
                        width: size.width,
                        child: ClipRRect(
                          borderRadius: Utils.borderRadius(r: 10.0),
                          child: e,
                        ),
                      ),
                    )
                    .toList(),
          ),
          Utils.verticalSpace(10.0),
          _buildDotIndicator(),
          Utils.verticalSpace(10.0),
        ],
      ),
    );
  }

  void callbackFunction(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(items.length, (index) {
        final i = _currentIndex == index;
        return AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: Utils.vSize(6.0),
          width: Utils.hSize(i ? 24.0 : 6.0),
          margin: Utils.only(right: 4.0),
          decoration: BoxDecoration(
            color: i ? primaryColor : primaryColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(i ? 50.0 : 5.0),
            //shape: i ? BoxShape.rectangle : BoxShape.circle,
          ),
        );
      }),
    );
  }
}

final List<dynamic> items = [
  const CustomImage(path: KImages.slider01, fit: BoxFit.cover),
  const CustomImage(path: KImages.slider01, fit: BoxFit.cover),
  const CustomImage(path: KImages.slider01, fit: BoxFit.cover),
  const CustomImage(path: KImages.slider01, fit: BoxFit.cover),
];
