import 'package:flutter/material.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: Stack(
        children: [
          CustomImage(
            path: KImages.allScreenBg,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: Utils.symmetric(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomImage(path: KImages.forgotIcons),
                  Utils.verticalSpace(40.0),
                  const CustomText(
                    text: 'Create a new Password',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                  Utils.verticalSpace(10.0),
                  const CustomText(
                    textAlign: TextAlign.center,
                    text:
                        'Don’t worry! it happens. Please enter the address associated with your account',
                    fontSize: 16.0,
                    color: grayColor,
                  ),
                  Utils.verticalSpace(40.0),
                  CustomForm(
                    label: 'New Password',
                    bottomSpace: 12.0,
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
                    label: 'Confirm new password',
                    bottomSpace: 32.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Confirm Password',
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
                  PrimaryButton(
                    text: 'Create',
                    onPressed:
                        () => Navigator.pushNamedAndRemoveUntil(
                          context,
                          RouteNames.loginScreen,
                          (route) => false,
                        ),
                  ),
                  Utils.verticalSpace(40.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
