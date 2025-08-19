import 'package:flutter/material.dart';

import '../../../routes/route_names.dart';
import '../../../utils/constraints.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_text.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      toolbarHeight: Utils.vSize(100.0),
      centerTitle: true,
      title: Container(
        padding: Utils.symmetric(v: 10.0),
        decoration: BoxDecoration(
          borderRadius: Utils.borderRadius(),
          gradient: LinearGradient(
            begin: const Alignment(1.00, 0.00),
            end: const Alignment(-1, 0),
            colors: [
              primaryColor.withOpacity(0.1),
              whiteColor.withOpacity(0),
            ],
          ),
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
                    border: Border.all(color: primaryColor, width: 1.5),
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
              onTap: () =>
                  Navigator.pushNamed(context, RouteNames.updateProfileScreen),
              child: Container(
                height: Utils.vSize(40.0),
                width: Utils.vSize(40.0),
                margin: Utils.only(left: 0.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: grayColor.withOpacity(0.5), width: 1.5),
                  borderRadius: Utils.borderRadius(),
                ),
                child: const CustomImage(
                  path: KImages.editIcon,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
