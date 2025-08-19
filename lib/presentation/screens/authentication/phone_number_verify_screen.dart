import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class PhoneNumberVerifyScreen extends StatelessWidget {
  const PhoneNumberVerifyScreen({super.key});

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
                    text: 'Phone Number',
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
                    label: 'Phone Number',
                    bottomSpace: 16.0,
                    child: IntlPhoneField(
                      showDropdownIcon: false,
                      disableLengthCheck: true,
                      //   flagsButtonPadding: Utils.only(bottom: 4.0),
                      flagsButtonMargin: Utils.symmetric(h: 6.0),
                      decoration: const InputDecoration(
                        hintText: '2598798',
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(),
                        // ),
                      ),
                      initialCountryCode: 'US',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                  Utils.verticalSpace(30),
                  PrimaryButton(
                    text: 'Verify your phone number',
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
