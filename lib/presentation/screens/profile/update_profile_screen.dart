import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../data/dummy_data/dummy_data.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_form.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
            text: 'Edit Profile',
            fontSize: 18.0,
            fontWeight: FontWeight.w600),
      ),
      body: Stack(
        children: [
          CustomImage(
            path: KImages.allScreenBg,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          ListView(
            padding: Utils.symmetric(v: 24.0).copyWith(top: 10.0),
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: Utils.vSize(120.0),
                      width: Utils.vSize(120.0),
                      margin: Utils.only(right: 0.0),
                      child: ClipRRect(
                        borderRadius: Utils.borderRadius(r: 100.0),
                        child: const CustomImage(
                          path: KImages.userImage,
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0.0,
                      bottom: 10.0,
                      child: GestureDetector(
                        onTap: () => print("pick an image"),
                        child: const CircleAvatar(
                          maxRadius: 16.0,
                          backgroundColor: primaryColor,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: whiteColor,
                            size: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomForm(
                label: 'Name',
                bottomSpace: 14.0,
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'username'),
                  keyboardType: TextInputType.name,
                ),
              ),
              CustomForm(
                label: 'Email Address',
                bottomSpace: 14.0,
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'email address'),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              CustomForm(
                label: 'Phone',
                bottomSpace: 14.0,
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'phone'),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
              CustomForm(
                label: 'Country',
                bottomSpace: 14.0,
                child: DropdownButtonFormField<ServiceCat>(
                  hint: const CustomText(text: "Select Country"),
                  isDense: true,
                  isExpanded: true,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(Utils.radius(10.0))),
                    ),
                  ),
                  // onTap: () {
                  //   Utils.closeKeyBoard(context);
                  // },
                  onChanged: (value) {},

                  items: country
                      .map<DropdownMenuItem<ServiceCat>>((ServiceCat value) =>
                      DropdownMenuItem<ServiceCat>(
                          value: value, child: Text(value.name)))
                      .toList(),
                ),
              ),
              CustomForm(
                label: 'State',
                bottomSpace: 14.0,
                child: DropdownButtonFormField<ServiceCat>(
                  hint: const CustomText(text: "Select State"),
                  isDense: true,
                  isExpanded: true,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(Utils.radius(10.0))),
                    ),
                  ),
                  // onTap: () {
                  //   Utils.closeKeyBoard(context);
                  // },
                  onChanged: (value) {},

                  items: country
                      .map<DropdownMenuItem<ServiceCat>>((ServiceCat value) =>
                      DropdownMenuItem<ServiceCat>(
                          value: value, child: Text(value.name)))
                      .toList(),
                ),
              ),
              CustomForm(
                label: 'City',
                bottomSpace: 14.0,
                child: DropdownButtonFormField<ServiceCat>(
                  hint: const CustomText(text: "Select City"),
                  isDense: true,
                  isExpanded: true,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(Utils.radius(10.0))),
                    ),
                  ),
                  // onTap: () {
                  //   Utils.closeKeyBoard(context);
                  // },
                  onChanged: (value) {},

                  items: country
                      .map<DropdownMenuItem<ServiceCat>>((ServiceCat value) =>
                      DropdownMenuItem<ServiceCat>(
                          value: value, child: Text(value.name)))
                      .toList(),
                ),
              ),
              CustomForm(
                label: 'Post Code',
                bottomSpace: 14.0,
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'post code'),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
              CustomForm(
                label: 'Address',
                bottomSpace: 24.0,
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'your address'),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              PrimaryButton(text: 'Update Profile', onPressed: () {}),
            ],
          ),
        ],
      )
    );
  }
}
