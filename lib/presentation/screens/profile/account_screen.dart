import 'package:flutter/material.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';
import '../home/component/heading.dart';
import '../home/component/single_food_card.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
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
              const CustomSliverAppBar(title: 'Account'),
              SliverToBoxAdapter(child: Utils.verticalSpace(8)),
              SliverToBoxAdapter(
                child: Container(
                  padding: Utils.symmetric(v: 14.0),
                  margin: Utils.symmetric(h: 20.0),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: Utils.borderRadius(),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19053336),
                        blurRadius: 16,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: Utils.vSize(55.0),
                            width: Utils.vSize(55.0),
                            margin: Utils.only(right: 0.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: primaryColor,
                                width: 1.5,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: ClipRRect(
                              borderRadius: Utils.borderRadius(r: 50.0),
                              child: const CustomImage(
                                path: KImages.userImage,
                                //fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Utils.horizontalSpace(10.0),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomText(
                                text: "Alena Sabyan",
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                              CustomText(
                                text: "user@gmail.com",
                                fontSize: 12.0,
                                height: 1.2,
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap:
                            () => Navigator.pushNamed(
                              context,
                              RouteNames.updateProfileScreen,
                            ),
                        child: Container(
                          // height: Utils.vSize(35.0),
                          // width: Utils.vSize(35.0),
                          margin: Utils.only(left: 10.0),
                          padding: Utils.all(value: 8.0),
                          //alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: blackColor,
                            borderRadius: Utils.borderRadius(r: 6.0),
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: whiteColor,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Heading(title1: 'My Favourites', padding: 20.0),
              ),
              SliverPadding(
                padding: Utils.symmetric(h: 12.0),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 260.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) => const SingleFoodCard(),
                    childCount: 5,
                  ),
                ),
              ),
              SliverToBoxAdapter(child: Utils.verticalSpace(30.0)),
            ],
          ),
        ],
      ),
    );
  }
}
