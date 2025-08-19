import 'package:flutter/material.dart';

import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Change Password',
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
        ),
      ),
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
                Utils.verticalSpace(30.0),
                CustomForm(
                  label: 'Current Password',
                  bottomSpace: 14.0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: iconColor),
                      prefixIcon: PrefixIcon(
                        icon: KImages.lockIcons,
                        iconColor: iconColor,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: iconColor,
                        size: 25,
                      ),
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: Utils.inputTextStyle(),
                  ),
                ),
                CustomForm(
                  label: 'New Password',
                  bottomSpace: 14.0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'New Password',
                      hintStyle: TextStyle(color: iconColor),
                      prefixIcon: PrefixIcon(
                        icon: KImages.lockIcons,
                        iconColor: iconColor,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: iconColor,
                        size: 25,
                      ),
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: Utils.inputTextStyle(),
                  ),
                ),
                CustomForm(
                  label: 'Confirm Password',
                  bottomSpace: 24.0,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: iconColor),
                      prefixIcon: PrefixIcon(
                        icon: KImages.lockIcons,
                        iconColor: iconColor,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: iconColor,
                        size: 25,
                      ),
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: Utils.inputTextStyle(),
                  ),
                ),
                PrimaryButton(text: 'Update Password', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
