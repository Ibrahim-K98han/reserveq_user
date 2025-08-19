import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';

class HotDealBannerSlider extends StatefulWidget {
  const HotDealBannerSlider({Key? key}) : super(key: key);

  @override
  State<HotDealBannerSlider> createState() => _HotDealBannerSliderState();
}

class _HotDealBannerSliderState extends State<HotDealBannerSlider> {
  final double height = 160;
  final int initialPage = 1;
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Utils.verticalSpace(40.0),
          CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 0.85,
              initialPage: initialPage,
              //enableInfiniteScroll: false,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            items: items
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
          Utils.verticalSpace(20.0),
          _buildDotIndicator(),
          Utils.verticalSpace(20.0),
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
      children: List.generate(
        items.length,
        (index) {
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
        },
      ),
    );
  }
}

final List<Widget> items = [
  const CustomImage(path: KImages.slider01, fit: BoxFit.cover),
  const CustomImage(path: KImages.slider01, fit: BoxFit.cover),
  const CustomImage(path: KImages.slider01, fit: BoxFit.cover),
  const CustomImage(path: KImages.slider01, fit: BoxFit.cover),
];
