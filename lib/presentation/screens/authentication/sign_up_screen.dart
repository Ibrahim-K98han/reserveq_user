import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import 'component/remember_component.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
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
          Container(
            height: size.height,
            width: size.width,
            padding: Utils.symmetric(h: 24),
            child: SingleChildScrollView(
              //physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Utils.verticalSpace(20.0),
                  const CustomText(
                    text: 'Sign UP',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                  const CustomText(
                    text: 'Create account and enjoy all services',
                    fontSize: 16.0,
                    color: lightGrayColor,
                  ),
                  Utils.verticalSpace(24.0),
                  CustomForm(
                    label: 'Full Name',
                    bottomSpace: 16.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'your name',
                        hintStyle: TextStyle(color: iconColor),
                        prefixIcon: PrefixIcon(
                          icon: KImages.userIcons,
                          iconColor: iconColor,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      style: Utils.inputTextStyle(),
                    ),
                  ),
                  CustomForm(
                    label: 'Email ',
                    bottomSpace: 16.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'your email address',
                        hintStyle: TextStyle(color: iconColor),
                        prefixIcon: PrefixIcon(
                          icon: KImages.emailIcons,
                          iconColor: iconColor,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: Utils.inputTextStyle(),
                    ),
                  ),
                  CustomForm(
                    label: 'Password',
                    bottomSpace: 20.0,
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
                  // Utils.verticalSpace(14.0),
                  _buildRemember(),
                  Utils.verticalSpace(20.0),
                  PrimaryButton(
                    text: 'Sign Up',
                    onPressed: () {
                      // Navigator.pushNamed(context, RouteNames.mainScreen);
                    },
                  ),
                  Utils.verticalSpace(12.0),
                  _createNewAccount(context),
                  Utils.verticalSpace(80.0),
                  _socialLogin(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRemember() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: Utils.only(top: 6.0),
        //   child: Checkbox(
        //       value: true,
        //       activeColor: primaryColor,
        //       onChanged: (bool? val) {}),
        // ),
        RememberComponent(),
        Flexible(
          child: RichText(
            text: TextSpan(
              text: 'I agree to the company ',
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: grayColor,
              ),
              children: [
                TextSpan(
                  text: 'Term of Service ',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                TextSpan(
                  text: 'and ',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: grayColor,
                  ),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _createNewAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(
          text: "Don't have an account? ",
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: blackColor,
          height: 1.6,
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, RouteNames.loginScreen),
          child: const CustomText(
            text: 'Sign In',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: primaryColor,
            height: 1.6,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }

  Widget _socialLogin() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomText(
          text: 'Register with',
          fontSize: 14.0,
          color: grayColor,
        ),
        Utils.verticalSpace(12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _socialCard(KImages.googleIcon, 'Google'),
            _socialCard(KImages.facebookIcon, 'Facebook'),
          ],
        ),
      ],
    );
  }

  Widget _socialCard(String icon, String name) {
    return Container(
      height: Utils.vSize(52.0),
      width: Utils.hSize(152.0),
      decoration: BoxDecoration(
        borderRadius: Utils.borderRadius(),
        border: Border.all(color: grayColor.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(path: icon),
          Utils.horizontalSpace(12.0),
          CustomText(
            text: name,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: blackColor,
          ),
        ],
      ),
    );
  }
}
