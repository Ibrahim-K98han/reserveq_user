import 'package:flutter/material.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import 'data/on_boarding_data.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late int _numPages;
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _numPages = data.length;
    _pageController = PageController(initialPage: _currentPage);
  }

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          CustomImage(
            path: KImages.allScreenBg,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: size.height,
            width: size.width,
            child: Padding(
              padding: Utils.symmetric(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildSkipButton(),
                  _buildImagesSlider(),
                  Utils.verticalSpace(size.height * 0.06),
                  _buildContent(),
                  Utils.verticalSpace(24.0),
                  _buildDotIndicator(),
                  Utils.verticalSpace(40.0),
                  Padding(
                    padding: Utils.symmetric(),
                    child: PrimaryButton(
                      text: 'Get Started',
                      textColor: whiteColor,
                      onPressed: () {
                        if (_currentPage == data.length - 1) {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            RouteNames.loginScreen,
                            (route) => false,
                          );
                        } else {
                          _pageController.nextPage(
                            duration: kDuration,
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImagesSlider() {
    return Container(
      height: size.height * 0.4,
      padding: Utils.all(value: 4.0),
      child: PageView(
        physics: const ClampingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: data.map((e) => CustomImage(path: e.image)).toList(),
      ),
    );
  }

  Widget _buildContent() {
    return AnimatedSwitcher(
      duration: kDuration,
      transitionBuilder: (Widget child, Animation<double> anim) {
        return FadeTransition(opacity: anim, child: child);
      },
      child: getContent(),
    );
  }

  Widget getContent() {
    final item = data[_currentPage];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      key: ValueKey('$_currentPage'),
      children: [
        CustomText(
          text: item.title,
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.center,
          color: blackColor,
        ),
        Utils.verticalSpace(16.0),
        CustomText(
          text: item.subTitle,
          textAlign: TextAlign.center,
          color: grayColor,
          height: 1.8,
        ),
      ],
    );
  }

  Widget _buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(data.length, (index) {
        final i = _currentPage == index;
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

  Widget _buildSkipButton() {
    return Row(
      children: [
        const Spacer(),
        CustomImage(
          path: KImages.appLogo,
          height: Utils.vSize(80.0),
          width: Utils.vSize(100.0),
        ),
        const Spacer(),
        GestureDetector(
          onTap:
              () => Navigator.pushNamedAndRemoveUntil(
                context,
                RouteNames.loginScreen,
                (route) => false,
              ),
          child: const CustomText(
            text: 'Skip',
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
            color: grayColor,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
