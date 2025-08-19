import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:resturant_booking_user/presentation/routes/route_names.dart';

import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_dialog.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double initialRating = 3.0;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(title: 'Service Review'),
          SliverPadding(
            padding: Utils.symmetric(v: 40.0).copyWith(top: 20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const CustomText(
                  text: 'Rating Your Products',
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
                Container(
                  padding: Utils.all(value: 20.0),
                  margin: Utils.only(top: 10.0, bottom: 24.0),
                  decoration: ShapeDecoration(
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: grayColor.withOpacity(0.1)),
                      borderRadius: Utils.borderRadius(),
                    ),
                  ),
                  child: Column(
                    children: [
                      const CustomText(
                        text: ' What is your Rate',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                      Utils.verticalSpace(10.0),
                      RatingBar(
                        itemCount: 5,
                        initialRating: initialRating,
                        allowHalfRating: true,
                        itemSize: 34.0,
                        glow: false,
                        ratingWidget: RatingWidget(
                          full: const CustomImage(path: KImages.star),
                          empty: const CustomImage(path: KImages.star2),
                          half: const CustomImage(path: KImages.star),
                        ),
                        onRatingUpdate: (double rate) {
                          initialRating = rate;
                          print('rating $initialRating');
                        },
                      ),
                    ],
                  ),
                ),
                const CustomText(
                  text: 'Please Write Product Quality',
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
                Utils.verticalSpace(10.0),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'write your valuable feedback!',
                  ),
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                ),
                Utils.verticalSpace(40.0),
                PrimaryButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => FeedBackPrompt(),
                    );
                  },
                  text: 'Submit Feedback',
                ),
                Utils.verticalSpace(10.0),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const CustomText(
                      text: 'Not Now',
                      color: grayColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class FeedBackPrompt extends StatelessWidget {
  const FeedBackPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return FeedBackDialog(
      image: KImages.feedback,
      height: Utils.vSize(200.0),
      message: "Thank You !",
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomText(
            text: 'Thank for your valuable Feedback',
            textAlign: TextAlign.center,
            color: Color(0xFF535769),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.43,
          ),
          Utils.verticalSpace(24.0),
          PrimaryButton(
            text: 'Back to Home',
            onPressed:
                () => Navigator.pushNamed(context, RouteNames.mainScreen),
            bgColor: primaryColor,
            textColor: whiteColor,
            borderRadiusSize: 10.0,
            fontSize: 16.0,
          ),
        ],
      ),
    );
  }
}
