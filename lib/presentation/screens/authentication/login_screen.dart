import 'package:flutter/material.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import 'component/remember_component.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(automaticallyImplyLeading: false),
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
            padding: Utils.symmetric(),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Utils.verticalSpace(20.0),
                  const CustomText(
                    text: 'Welcome Back!',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                  const CustomText(
                    text: 'Sign In to your account',
                    fontSize: 16.0,
                    color: lightGrayColor,
                  ),
                  Utils.verticalSpace(24.0),
                  CustomForm(
                    label: 'Email',
                    bottomSpace: 16.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email address',
                        hintStyle: TextStyle(
                          color: iconColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        prefixIcon: PrefixIcon(
                          icon: KImages.emailIcons,
                          iconColor: iconColor,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      style: Utils.inputTextStyle(),
                    ),
                  ),
                  CustomForm(
                    label: 'Password',
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: iconColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        prefixIcon: PrefixIcon(
                          icon: KImages.lockIcons,
                          iconColor: iconColor,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.visibility_off,
                            color: iconColor,
                            size: 25,
                          ),
                        ),
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      style: Utils.inputTextStyle(),
                    ),
                  ),
                  // Utils.verticalSpace(14.0),
                  _buildRemember(context),
                  Utils.verticalSpace(40.0),
                  PrimaryButton(
                    text: 'Sign In',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        RouteNames.mainScreen,
                        (route) => false,
                      );
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

  Widget _buildRemember(BuildContext context) {
    return Padding(
      padding: Utils.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Row(
            children: [
              RememberComponent(),
              CustomText(
                text: 'Remember me',
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: blackColor,
                height: 1.6,
              ),
            ],
          ),
          GestureDetector(
            onTap:
                () => Navigator.pushNamed(
                  context,
                  RouteNames.verifyIdentityScreen,
                ),
            child: CustomText(
              text: 'Forgot Password',
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: primaryColor,
              height: 1.6,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
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
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, RouteNames.signUpScreen),
          child: const CustomText(
            text: 'Sign Up',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: primaryColor,
            height: 1.6,
          ),
        ),
      ],
    );
  }

  Widget _socialLogin() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomText(
          text: 'Register with:',
          fontSize: 14.0,
          color: blackColor,
          fontWeight: FontWeight.w500,
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
