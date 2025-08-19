import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:resturant_booking_user/presentation/utils/k_images.dart';
import 'package:resturant_booking_user/presentation/widgets/custom_image.dart';

import '../../utils/constraints.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

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
              const CustomSliverAppBar(title: 'Contact us'),
              SliverPadding(
                padding: Utils.symmetric(v: 20.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    CustomForm(
                      label: 'Full Name',
                      bottomSpace: 16.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'your name',
                          hintStyle: TextStyle(color: iconColor),
                          prefixIcon: PrefixIcon(
                            icon: KImages.userIcons,
                            iconColor: iconColor,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    CustomForm(
                      label: 'Subject',
                      bottomSpace: 16.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'I want to Cancel',
                          hintStyle: TextStyle(color: iconColor),
                          prefixIcon: PrefixIcon(
                            icon: KImages.userIcons,
                            iconColor: iconColor,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    CustomForm(
                      label: 'Email',
                      bottomSpace: 16.0,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: iconColor),
                          prefixIcon: PrefixIcon(
                            icon: KImages.emailIcons,
                            iconColor: iconColor,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
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

                    CustomForm(
                      label: 'Message',
                      bottomSpace: 30.0,
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: 'message'),
                        keyboardType: TextInputType.text,
                        maxLines: 4,
                      ),
                    ),
                    PrimaryButton(text: 'Update Profile', onPressed: () {}),
                    Utils.verticalSpace(30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContactInfo(
                          icon: KImages.call,
                          title: 'Phone Number',
                          subTitle: '012-345-6789',
                          subTitleTwo: '012-345-6789',
                        ),
                        ContactInfo(
                          icon: KImages.emailIcons,
                          title: 'Email Address',
                          subTitle: 'contact@gmail.com',
                          subTitleTwo: 'contact@gmail.com',
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    Key? key,
    this.icon,
    required this.title,
    required this.subTitle,
    this.bottom = 16.0,
    required this.subTitleTwo,
  }) : super(key: key);
  final String? icon;
  final String title;
  final String subTitle;
  final String subTitleTwo;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImage(path: icon),
            Utils.horizontalSpace(4),
            CustomText(
              text: title,
              color: blackColor,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        CustomText(text: subTitle, color: grayColor),
        CustomText(text: subTitleTwo, color: grayColor),
      ],
    );
  }
}
