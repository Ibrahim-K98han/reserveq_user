import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../routes/route_names.dart';
import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: Utils.vSize(160.0),
      backgroundColor: transparent,
      pinned: true,
      flexibleSpace: Stack(
        children: [
          Positioned.fill(
            child: CustomImage(path: KImages.appBarBg, fit: BoxFit.cover),
          ),
          // Positioned Profile + Location + Icons Row
          Positioned(
            top: 60.h,
            left: 20.w,
            right: 20.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    _borderContainer(
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: const CustomImage(
                          path: KImages.userImage,
                          fit: BoxFit.cover,
                          height: 46,
                          width: 46,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: 'Select Location',
                              fontSize: 14.0,
                              color: whiteColor,
                            ),
                            Icon(Icons.keyboard_arrow_down, color: whiteColor),
                          ],
                        ),
                        CustomText(
                          text: '4517 Washington',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: whiteColor,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap:
                          () => Navigator.pushNamed(
                            context,
                            RouteNames.cartScreen,
                          ),
                      child: _borderContainer(
                        const CustomImage(
                          path: KImages.cartIcon,
                          height: 26,
                          width: 26,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap:
                          () => Navigator.pushNamed(
                            context,
                            RouteNames.notificationScreen,
                          ),
                      child: _borderContainer(
                        const CustomImage(
                          path: KImages.activeBell,
                          height: 26,
                          width: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Positioned Search Bar
          Positioned(
            left: 20.w,
            right: 20.w,
            bottom: 10.h,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                hintText: 'Search here...',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: CustomImage(
                    path: KImages.search,
                    color: iconColor,
                    height: 20,
                    width: 20,
                  ),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: CustomImage(
                    path: KImages.filterIcon,
                    height: 20,
                    width: 20,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _borderContainer(Widget child) {
    return Container(
      height: Utils.vSize(46.0),
      width: Utils.vSize(46.0),
      margin: Utils.only(left: 0.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: whiteColor.withOpacity(0.3), width: 1.0),
        borderRadius: Utils.borderRadius(),
      ),
      child: child,
    );
  }
}
