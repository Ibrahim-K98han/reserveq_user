import 'package:equatable/equatable.dart';

import '../../../utils/k_images.dart';

class OnBoardingData extends Equatable {
  final String image;
  final String title;
  final String subTitle;

  const OnBoardingData({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  List<Object?> get props => [
        image,
        title,
        subTitle,
      ];
}

final List<OnBoardingData> data = [
  const OnBoardingData(
    image: KImages.onBoarding01,
    title: 'Easy Way to Select your Location',
    subTitle:
        'Never overspend your money again with enjoy delicious food feature.',
  ),
  const OnBoardingData(
    image: KImages.onBoarding02,
    title: 'Easy Way to Order your Delicious Food',
    subTitle:
        'Never overspend your money again with enjoy delicious food feature.',
  ),
  const OnBoardingData(
    image: KImages.onBoarding03,
    title: 'Easy Way to Receive your Order',
    subTitle:
        'Never overspend your money again with enjoy delicious food feature.',
  ),
  const OnBoardingData(
    image: KImages.onBoarding04,
    title: 'Easy Way to Order your Delicious Food',
    subTitle:
        'Never overspend your money again with enjoy delicious food feature.',
  ),
];
