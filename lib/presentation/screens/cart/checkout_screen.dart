import 'package:flutter/material.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import 'component/cart_component.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
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
              const CustomSliverAppBar(title: 'My Cart'),
              SliverPadding(
                padding: Utils.symmetric(),
                sliver: SliverList.list(
                  children: [
                    ...List.generate(3, (index) => const CartComponent()),
                    Utils.verticalSpace(10.0),
                    const CustomText(
                      text: 'Delivery Address',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      padding: Utils.symmetric(h: 10.0, v: 16.0),
                      margin: Utils.symmetric(
                        v: 10.0,
                        h: 0.0,
                      ).copyWith(bottom: 20.0),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: Utils.borderRadius(),
                        boxShadow: boxShadow,
                      ),
                      child: Row(
                        children: [
                          const Flexible(
                            fit: FlexFit.loose,
                            child: CustomText(
                              text: 'Sulfat Street 13 1366 Pluto. Cyber Arm',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            onTap:
                                () => Navigator.pushNamed(
                                  context,
                                  RouteNames.addressScreen,
                                ),
                            child: const CustomText(
                              text: 'Change Address',
                              fontSize: 16.0,
                              color: redColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CustomText(
                      text: 'Payment Summary',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      padding: Utils.symmetric(h: 10.0, v: 16.0),
                      margin: Utils.symmetric(v: 10.0, h: 0.0),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: Utils.borderRadius(),
                        boxShadow: boxShadow,
                      ),
                      child: Column(
                        children: [
                          _billInfo(
                            'Sub Total',
                            Utils.formatPrice(context, 12),
                            fontWeight: FontWeight.w400,
                          ),
                          Utils.verticalSpace(12.0),
                          _billInfo(
                            'Extra Addon (3)',
                            Utils.formatPrice(context, 12),
                          ),
                          Utils.verticalSpace(12.0),
                          _billInfo(
                            'Fee and Delivery',
                            Utils.formatPrice(context, 12),
                          ),
                          Container(
                            margin: Utils.symmetric(h: 0.0, v: 14.0),
                            color: grayColor.withOpacity(0.2),
                            height: 0.5,
                          ),
                          _billInfo(
                            'Total Amount',
                            Utils.formatPrice(context, 12),
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.1,
        width: size.width,
        color: whiteColor,
        child: Padding(
          padding: Utils.symmetric(v: 14.0),
          child: PrimaryButton(
            text: 'Checkout',
            onPressed:
                () => Navigator.pushNamed(context, RouteNames.paymentScreen),
          ),
        ),
      ),
    );
  }

  Widget _billInfo(
    String title,
    String price, {
    FontWeight fontWeight = FontWeight.w500,
    double padding = 10.0,
  }) {
    return Padding(
      padding: Utils.only(bottom: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: grayColor,
          ),
          CustomText(
            text: price,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: blackColor,
          ),
        ],
      ),
    );
  }
}
