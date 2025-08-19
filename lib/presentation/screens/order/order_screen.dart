import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/favourite_button.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

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
              SliverAppBar(
                backgroundColor: whiteColor,
                automaticallyImplyLeading: false,
                toolbarHeight: Utils.vSize(60.0),
                pinned: true,
                title: const CustomText(
                  text: 'My Orders',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
                bottom: const BottomTab(),
                //bottom: bottom as PreferredSizeWidget,
              ),
              SliverList.list(
                children: List.generate(6, (index) => const MyOrderCard()),
              ),
              SliverToBoxAdapter(
                child: Utils.verticalSpace(size.height * 0.13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyOrderCard extends StatelessWidget {
  const MyOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Utils.only(right: 5.0),
      margin: Utils.symmetric(v: 6.0, h: 16.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: Utils.borderRadius(),
        boxShadow: boxShadow,
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: Utils.hSize(120.0),
                    padding: Utils.symmetric(h: 6.0, v: 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: const CustomImage(
                        path: KImages.featuredImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: PercentageOffer(value: '-25%'),
                  ),
                ],
              ),
              Utils.horizontalSpace(10.0),
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Flexible(
                      fit: FlexFit.loose,
                      child: CustomText(
                        text:
                            'Healthy Taco Salad with fresh vegetable with masala cheese',
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        maxLine: 2,
                      ),
                    ),
                    Row(
                      children: [
                        CustomText(text: 'Order Id# '),
                        CustomText(text: '0154879', color: grayColor),
                      ],
                    ),
                    Divider(color: iconColor),
                    Row(
                      children: [
                        CustomImage(
                          path: KImages.currencyIcon,
                          color: grayColor,
                        ),
                        Utils.horizontalSpace(2.0),
                        CustomText(text: '\$75.40', color: grayColor),
                        Padding(
                          padding: Utils.symmetric(h: 8.0),
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              color: grayColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Container(
                          padding: Utils.symmetric(h: 8.0, v: 2.0),
                          decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: CustomText(
                            text: 'Active',
                            color: whiteColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Utils.verticalSpace(4),
                  ],
                ),
              ),

              // isVisibleRightChild
              //     ? Container(
              //         // height: Utils.vSize(35.0),
              //         // width: Utils.vSize(35.0),
              //         margin: Utils.only(left: 10.0),
              //         padding: Utils.all(value: 4.0),
              //         //alignment: Alignment.center,
              //         decoration: BoxDecoration(
              //           color: primaryColor,
              //           borderRadius: Utils.borderRadius(r: 6.0),
              //         ),
              //         child: const Icon(
              //           Icons.arrow_forward,
              //           color: whiteColor,
              //           size: 20.0,
              //         ),
              //       )
              //     : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomTab extends StatefulWidget implements PreferredSizeWidget {
  const BottomTab({super.key});

  @override
  State<BottomTab> createState() => _BottomTabState();

  @override
  Size get preferredSize => Size.fromHeight(Utils.vSize(50.0));
}

class _BottomTabState extends State<BottomTab> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = ['Active', 'Completed', 'Cancelled'];
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: grayColor.withOpacity(0.2))),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: List.generate(tabs.length, (index) {
            final active = currentIndex == index;
            return InkWell(
              onTap: () => setState(() => currentIndex = index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                padding: Utils.symmetric(v: 14.0, h: 26.0),
                // margin: Utils.only(
                //     right: index == tabs.length - 1 ? 20.0 : 12.0,
                //     left: index == 0 ? 20.0 : 0.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      style: active ? BorderStyle.solid : BorderStyle.none,
                      color: primaryColor,
                      width: 3.0,
                    ),
                  ),
                ),
                child: CustomText(
                  text: tabs[index],
                  color: active ? primaryColor : grayColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
