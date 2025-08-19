import 'package:flutter/material.dart';

import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomImage(
            path: KImages.allScreenBg,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),

          CustomScrollView(
            slivers: [
              const CustomSliverAppBar(title: 'Payment'),
              SliverPadding(
                padding: Utils.symmetric(),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    const CustomText(
                      text: 'Choose your Payment Method',
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                      fontSize: 20.0,
                    ),
                    Utils.verticalSpace(10.0),
                    SinglePaymentCard(
                      onTap: () {},
                      icon: KImages.paymentIcon01,
                    ),
                    SinglePaymentCard(
                      onTap: () {},
                      icon: KImages.paymentIcon02,
                    ),
                    SinglePaymentCard(
                      onTap: () {},
                      icon: KImages.paymentIcon03,
                    ),
                    SinglePaymentCard(
                      onTap: () {},
                      icon: KImages.paymentIcon04,
                    ),
                    SinglePaymentCard(
                      onTap: () {},
                      icon: KImages.paymentIcon05,
                    ),
                    SinglePaymentCard(
                      onTap: () {},
                      icon: KImages.paymentIcon06,
                    ),
                    SinglePaymentCard(
                      onTap: () {},
                      icon: KImages.paymentIcon07,
                    ),
                    SinglePaymentCard(
                      onTap: () {},
                      icon: KImages.paymentIcon08,
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SinglePaymentCard extends StatelessWidget {
  const SinglePaymentCard({Key? key, required this.onTap, required this.icon})
    : super(key: key);
  final VoidCallback onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: Utils.symmetric(v: 18.0, h: 0.0),
        margin: Utils.symmetric(v: 12.0, h: 0.0).copyWith(bottom: 0.0),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFDBDBDB)),
          borderRadius: Utils.borderRadius(),
        ),
        child: CustomImage(path: icon, fit: BoxFit.cover),
      ),
    );
  }
}
