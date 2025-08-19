import 'package:flutter/material.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                  const CustomText(
                    text: 'Email Address',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                  Utils.verticalSpace(10.0),
                  const CustomText(
                    textAlign: TextAlign.center,
                    text:
                        'Your identity helps you discover new people and opportunities',
                    fontSize: 16.0,
                    color: grayColor,
                  ),
                  Utils.verticalSpace(40.0),
                  CustomForm(
                    label: 'Email',
                    bottomSpace: 16.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'email address',
                        prefixIcon: PrefixIcon(
                          icon: KImages.emailIcons,
                          iconColor: iconColor,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: Utils.inputTextStyle(),
                    ),
                  ),
                  Utils.verticalSpace(20),
                  PrimaryButton(
                    text: 'Verify your email address',
                    onPressed:
                        () => Navigator.pushNamed(
                          context,
                          RouteNames.verificationCodeScreen,
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
