import 'package:flutter/material.dart';

import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/custom_text.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

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
            slivers: [CustomSliverAppBar(title: 'Address'), AddressWidget()],
          ),
        ],
      ),
    );
  }
}

class AddressWidget extends StatefulWidget {
  const AddressWidget({super.key});

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: List.generate(3, (index) {
        final active = currentIndex == index;
        return GestureDetector(
          onTap: () => setState(() => currentIndex = index),
          child: AnimatedContainer(
            duration: kDuration,
            margin: Utils.symmetric(v: 14.0).copyWith(top: 0.0),
            decoration: BoxDecoration(
              borderRadius: Utils.borderRadius(),
              border: Border.all(
                color: active ? primaryColor : grayColor.withOpacity(0.2),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: Utils.symmetric(h: 10.0, v: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: 'Billing Address #1',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                      Row(
                        children: [
                          _editDelete(
                            const CustomImage(path: KImages.editIcon),
                          ),
                          Utils.horizontalSpace(6.0),
                          _editDelete(
                            const CustomImage(path: KImages.trashIcon),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1.0,
                  margin: Utils.only(bottom: 10.0),
                  color: grayColor.withOpacity(0.3),
                ),
                _info('Full Name', 'Jost Battler'),
                _info('Email', 'jostbatler@gmail.com'),
                _info('Phone', '+1 707 797 0462'),
                _info('Country', 'Bangladesh'),
                _info('State', 'Dhaka'),
                _info('City', 'Dhaka'),
                _info('Address', 'Mirpur-11, Dhaka'),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _info(String title, String value) {
    return Padding(
      padding: Utils.symmetric(h: 10.0, v: 12.0).copyWith(top: 0.0),
      child: Row(
        children: [
          CustomText(
            text: '$title:',
            color: const Color(0xFF4D5461),
            fontWeight: FontWeight.w500,
          ),
          CustomText(
            text: value,
            fontWeight: FontWeight.w500,
            color: blackColor,
          ),
        ],
      ),
    );
  }

  Widget _editDelete(Widget child) {
    return Container(
      height: Utils.vSize(40.0),
      width: Utils.vSize(40.0),
      margin: Utils.only(left: 0.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: grayColor.withOpacity(0.5), width: 1.5),
        borderRadius: Utils.borderRadius(),
      ),
      child: child,
    );
  }
}
