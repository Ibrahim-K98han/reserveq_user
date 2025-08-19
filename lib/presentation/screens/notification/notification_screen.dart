import 'package:flutter/material.dart';

import '../../../data/dummy_data/dummy_data.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
              const CustomSliverAppBar(title: 'Notification'),
              SliverList(
                delegate: SliverChildListDelegate([
                  const NotificationItem(
                    circleBgColor: Color(0x14F75555),
                    icon: KImages.notification01,
                    title: 'Orders Cancelled!',
                    period: '19 Dec, 2022 | 20:50 PM',
                    notification: notification01,
                    isNew: true,
                  ),
                  NotificationItem(
                    circleBgColor: primaryColor.withOpacity(0.4),
                    icon: KImages.notification02,
                    title: 'Orders Successful!',
                    period: '19 Dec, 2022 | 20:49 PM',
                    notification: notification02,
                    isNew: true,
                  ),
                  const NotificationItem(
                    circleBgColor: Color(0x14FF9800),
                    icon: KImages.notification03,
                    title: 'New Services Available!',
                    period: '19 Dec, 2022 | 20:49 PM',
                    notification: notification03,
                    isNew: false,
                  ),
                  const NotificationItem(
                    circleBgColor: Color(0x14246BFD),
                    icon: KImages.notification04,
                    title: 'Credit Card Connected!',
                    period: '12 Dec, 2022 | 15:38 PM',
                    notification: notification04,
                    isNew: false,
                  ),
                  NotificationItem(
                    circleBgColor: primaryColor.withOpacity(0.4),
                    icon: KImages.profileActive,
                    title: 'Account Setup Successful!',
                    period: '12 Dec, 2022 | 15:38 PM',
                    notification: notification04,
                    isNew: false,
                  ),
                  NotificationItem(
                    circleBgColor: primaryColor.withOpacity(0.4),
                    icon: KImages.notification02,
                    title: 'Orders Successful!',
                    period: '19 Dec, 2022 | 20:49 PM',
                    notification: notification02,
                    isNew: true,
                  ),
                  const NotificationItem(
                    circleBgColor: Color(0x14FF9800),
                    icon: KImages.notification03,
                    title: 'New Services Available!',
                    period: '19 Dec, 2022 | 20:49 PM',
                    notification: notification03,
                    isNew: false,
                  ),
                  const NotificationItem(
                    circleBgColor: Color(0x14246BFD),
                    icon: KImages.notification04,
                    title: 'Credit Card Connected!',
                    period: '12 Dec, 2022 | 15:38 PM',
                    notification: notification04,
                    isNew: false,
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.circleBgColor,
    required this.icon,
    required this.title,
    required this.period,
    required this.notification,
    this.isNew = true,
  });

  final Color circleBgColor;
  final String icon;
  final String title;
  final String period;
  final String notification;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Utils.symmetric(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: Utils.vSize(60.0),
                    width: Utils.vSize(60.0),
                    alignment: Alignment.center,
                    margin: Utils.only(right: 10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: circleBgColor,
                    ),
                    child: CustomImage(path: icon),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: title,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                      Utils.verticalSpace(6.0),
                      CustomText(text: period, color: grayColor),
                    ],
                  ),
                ],
              ),
              !isNew
                  ? const SizedBox()
                  : Container(
                    padding: Utils.symmetric(h: 8.0, v: 6.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: Utils.borderRadius(r: 6.0),
                      color: const Color(0xFFFE724C),
                    ),
                    child: const CustomText(
                      text: 'New',
                      fontSize: 10.0,
                      color: whiteColor,
                    ),
                  ),
            ],
          ),
          CustomText(
            text: notification,
            color: const Color(0xFF394150),
            height: 1.6,
          ),
          Container(
            height: 1.0,
            margin: Utils.symmetric(h: 0.0, v: 14.0),
            color: grayColor.withOpacity(0.1),
          ),
        ],
      ),
    );
  }
}
