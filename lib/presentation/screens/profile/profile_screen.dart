import 'package:flutter/material.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_dialog.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import 'component/profile_app_bar.dart';
import 'component/profile_items.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              const ProfileAppBar(),
              SliverToBoxAdapter(child: Utils.verticalSpace(size.height * 0.02)),
              SliverList(
                  delegate: SliverChildListDelegate([
                    ProfileItem(
                      title: 'Account',
                      icon: KImages.p01,
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.accountScreen),
                    ),
                    ProfileItem(
                      title: 'Notification',
                      icon: KImages.notification,
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.notificationScreen),
                    ),
                    ProfileItem(
                      title: 'Password Change',
                      icon: KImages.p03,
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.changePasswordScreen),
                    ),
                    ProfileItem(
                      title: 'Terms and Condition',
                      icon: KImages.p04,
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.termsConditionScreen),
                    ),
                    ProfileItem(
                      title: 'Privacy Policy',
                      icon: KImages.p05,
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.privacyPolicyScreen),
                    ),
                    ProfileItem(
                      title: 'FAQ',
                      icon: KImages.p05,
                      onTap: () => Navigator.pushNamed(context, RouteNames.faqScreen),
                    ),
                    ProfileItem(
                      title: 'About us',
                      icon: KImages.p06,
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.aboutUsScreen),
                    ),
                    ProfileItem(
                      title: 'Contact Us',
                      icon: KImages.p07,
                      onTap: () =>
                          Navigator.pushNamed(context, RouteNames.contactUsScreen),
                    ),
                    ProfileItem(
                      title: 'App Info',
                      icon: KImages.p08,
                      onTap: () {},
                      version: true,
                    ),
                    Utils.verticalSpace(size.height * 0.05),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => const LogoutPrompt()),
                          child: Container(
                            padding: Utils.symmetric(v: 10.0),
                            margin: Utils.symmetric(),
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: Utils.borderRadius(r: 6.0)),
                            child: const Row(
                              children: [
                                CustomImage(path: KImages.p09),
                                CustomText(
                                  text: 'Logout',
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])),
            ],
          ),
        ],
      )
    );
  }
}

class LogoutPrompt extends StatelessWidget {
  const LogoutPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return FeedBackDialog(
        image: KImages.logoutPower,
        height: Utils.vSize(235.0),
        message: "Do you want to\nLOGOUT",
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomText(
              text: 'Do you want to logout?',
              textAlign: TextAlign.center,
              color: Color(0xFF535769),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1.43,
            ),
            Utils.verticalSpace(24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: PrimaryButton(
                    text: 'Cancel',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    borderRadiusSize: 4.0,
                    bgColor: blackColor,
                    textColor: whiteColor,
                    fontSize: 16.0,
                    minimumSize: Size(Utils.hSize(150.0), Utils.vSize(52.0)),
                    maximumSize: Size(Utils.hSize(150.0), Utils.vSize(52.0)),
                  ),
                ),
                Utils.horizontalSpace(20),
                Expanded(
                  child: PrimaryButton(
                    text: 'Logout',
                    onPressed: () => Navigator.pushNamed(context, RouteNames.loginScreen),
                    bgColor: primaryColor,
                    textColor: whiteColor,
                    borderRadiusSize: 4.0,
                    fontSize: 16.0,
                    minimumSize: Size(Utils.hSize(150.0), Utils.vSize(52.0)),
                    maximumSize: Size(Utils.hSize(150.0), Utils.vSize(52.0)),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
