import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../../data/dummy_data/dummy_data.dart';
import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import 'component/details_information.dart';
import 'component/increment_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.maxFinite,
            width: size.width,
            child: CustomImage(
              path: KImages.bigBurger,
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: 200.h,
            ),
          ),
          // Back & Favorite Icons
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _borderContainer(
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.clear,
                      size: 25.0,
                      color: blackColor,
                    ),
                  ),
                ),
                _borderContainer(
                  const Icon(
                    Icons.favorite_border_outlined,
                    size: 25.0,
                    color: blackColor,
                  ),
                ),
              ],
            ),
          ),

          // Bottom Content Container
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: Utils.symmetric(h: 16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'Sandwich with Chicken Tomato',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: blackColor,
                    ),
                    Utils.verticalSpace(12.0),
                    ReadMoreText(
                      privacy01,
                      trimLength: 80,
                      trimCollapsedText: 'View More',
                      moreStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 14.0,
                        color: redColor,
                        height: 1.6,
                      ),
                      lessStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 14.0,
                        color: redColor,
                        height: 1.6,
                      ),
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16.0,
                        color: grayColor,
                        height: 1.6,
                      ),
                    ),
                    Utils.verticalSpace(20.0),
                    Row(
                      children: [
                        const IncrementButton(),
                        Utils.horizontalSpace(20.0),
                        Expanded(
                          child: DropdownButtonFormField<ServiceCat>(
                            hint: const CustomText(text: "Variation Size"),
                            isDense: true,
                            dropdownColor: whiteColor,
                            isExpanded: true,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  Utils.radius(5.0),
                                ),
                              ),
                            ),
                            onChanged: (value) {},
                            items:
                                country
                                    .map<DropdownMenuItem<ServiceCat>>(
                                      (ServiceCat value) =>
                                          DropdownMenuItem<ServiceCat>(
                                            value: value,
                                            child: Text(value.name),
                                          ),
                                    )
                                    .toList(),
                          ),
                        ),
                      ],
                    ),
                    Utils.verticalSpace(20.0),
                    const DetailInformation(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        height: size.height * 0.1,
        width: size.width,
        color: whiteColor,
        padding: Utils.symmetric(v: 14.0, h: 16.0),
        child: PrimaryButton(
          text: 'Add To Cart',
          onPressed: () => Navigator.pushNamed(context, RouteNames.cartScreen),
        ),
      ),
    );
  }

  Widget _borderContainer(Widget child) {
    return Container(
      height: Utils.vSize(40.0),
      width: Utils.vSize(40.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: Utils.borderRadius(),
      ),
      child: child,
    );
  }
}
