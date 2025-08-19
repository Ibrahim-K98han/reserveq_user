import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_booking_user/presentation/routes/route_names.dart';
import 'package:resturant_booking_user/presentation/utils/constraints.dart';
import 'package:resturant_booking_user/presentation/utils/utils.dart';
import 'package:resturant_booking_user/presentation/widgets/custom_text.dart';

import '../../utils/k_images.dart';
import '../../widgets/custom_image.dart';

class VerifyIdentityScreen extends StatefulWidget {
  const VerifyIdentityScreen({super.key});

  @override
  State<VerifyIdentityScreen> createState() => _VerifyIdentityScreenState();
}

class _VerifyIdentityScreenState extends State<VerifyIdentityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          CustomImage(
            path: KImages.allScreenBg,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: Utils.symmetric(),
            child: Column(
              children: [
                CustomText(
                  text: 'Verify your identity',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: blackColor,
                ),
                CustomText(
                  textAlign: TextAlign.center,
                  text:
                      'Your identity helps you discover new people and opportunities',
                  fontSize: 14,
                  color: grayColor,
                ),
                Utils.verticalSpace(20),
                VerifyIdentityContainer(
                  icon: KImages.emailIcons,
                  title: 'Email',
                  subTitle: 'Verify with your email',
                  check: true,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RouteNames.forgotPasswordScreen,
                    );
                  },
                ),
                Utils.verticalSpace(20),
                VerifyIdentityContainer(
                  icon: KImages.call,
                  title: 'Phone Number',
                  subTitle: 'Verify with your Phone number',
                  check: false,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RouteNames.phoneNumberVerifyScreen,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VerifyIdentityContainer extends StatefulWidget {
  const VerifyIdentityContainer({
    super.key,
    this.icon,
    this.title,
    this.subTitle,
    this.check,
    this.onTap,
  });

  final String? icon;
  final String? title;
  final String? subTitle;
  final bool? check;
  final VoidCallback? onTap;

  @override
  State<VerifyIdentityContainer> createState() =>
      _VerifyIdentityContainerState();
}

class _VerifyIdentityContainerState extends State<VerifyIdentityContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 72.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          leading: CircleAvatar(
            backgroundColor: lightRedColor,
            child: CustomImage(path: widget.icon),
          ),
          title: CustomText(text: widget.title ?? ''),
          subtitle: CustomText(text: widget.subTitle ?? ''),
          trailing:
              widget.check == true
                  ? CustomImage(path: KImages.checkmarkRounded)
                  : SizedBox.shrink(),
        ),
      ),
    );
  }
}
