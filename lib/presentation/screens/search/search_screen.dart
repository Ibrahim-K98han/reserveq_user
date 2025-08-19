import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/primary_button.dart';
import '../home/component/single_new_arrival_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
              SliverAppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: Utils.vSize(100.0),
                pinned: true,
                // backgroundColor: redColor,
                title: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: iconColor),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: iconColor,
                      size: 30,
                    ),
                    suffixIcon: SizedBox(
                      height: 30.0,
                      width: 30.0,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: whiteColor,
                              context: context,
                              showDragHandle: true,
                              constraints: BoxConstraints(
                                maxHeight: Utils.vSize(600.0),
                                minHeight: 0.0,
                                maxWidth: double.infinity,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(Utils.radius(30.0)),
                                  topRight: Radius.circular(Utils.radius(30.0)),
                                ),
                              ),
                              builder: (context) => const FilterFood(),
                            );
                          },
                          child: const CustomImage(
                            path: KImages.filterIcon,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: Utils.symmetric(h: 0.0),
                sliver: SliverList.list(
                  children: List.generate(
                    5,
                    (index) => const SingleNewArrivalCard(),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: Utils.verticalSpace(30.0)),
            ],
          ),
        ],
      ),
    );
  }
}

class FilterFood extends StatefulWidget {
  const FilterFood({super.key});

  @override
  State<FilterFood> createState() => _FilterFoodState();
}

class _FilterFoodState extends State<FilterFood> {
  int currentCategory = 0;
  int currentRecipeType = 0;

  void changeCategory(int index) {
    setState(() => currentCategory = index);
  }

  void changeRecipe(int index) {
    setState(() => currentRecipeType = index);
  }

  @override
  Widget build(BuildContext context) {
    final category = ['Vegetables', 'Fish', 'Pizza'];
    final recipeType = [
      'Salad',
      'Egg',
      'Vegetables',
      'Chicken',
      'Cakes',
      'Meal',
    ];
    const values = RangeValues(0.2, 0.5);
    return Container(
      width: double.infinity,
      height: Utils.vSize(600.0),
      padding: Utils.symmetric(h: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.center,
              child: CustomText(
                text: 'Filter',
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const CustomText(
              text: 'Category',
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
            Utils.verticalSpace(12.0),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceBetween,
              spacing: 12.0,
              runSpacing: 12.0,
              children: List.generate(category.length, (index) {
                final active = currentCategory == index;
                return GestureDetector(
                  onTap: () => changeCategory(index),
                  child: Container(
                    padding: Utils.symmetric(v: 10.0),
                    decoration: BoxDecoration(
                      color: active ? Color(0xff212936) : whiteColor,
                      border: Border.all(color: borderColor),
                      borderRadius: Utils.borderRadius(r: 50.0),
                    ),
                    child: CustomText(
                      text: category[index],
                      color: active ? whiteColor : blackColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }),
            ),
            Utils.verticalSpace(24.0),
            const CustomText(
              text: 'Recipe Type',
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
            Utils.verticalSpace(12.0),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceBetween,
              spacing: 12.0,
              runSpacing: 12.0,
              children: List.generate(recipeType.length, (index) {
                final recipeActive = currentRecipeType == index;
                return GestureDetector(
                  onTap: () => changeRecipe(index),
                  child: Container(
                    padding: Utils.symmetric(v: 10.0),
                    decoration: BoxDecoration(
                      color: recipeActive ? Color(0xff212936) : whiteColor,
                      border: Border.all(color: borderColor),
                      borderRadius: Utils.borderRadius(r: 50.0),
                    ),
                    child: CustomText(
                      text: recipeType[index],
                      color: recipeActive ? whiteColor : blackColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }),
            ),
            Utils.verticalSpace(24.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Price Range',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  text: '\$25 - \$250',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            Utils.verticalSpace(12.0),
            RangeSlider(
              activeColor: Color(0xff212936),
              inactiveColor: grayColor.withOpacity(0.2),
              values: values,
              onChanged: (values) {},
            ),
            Utils.verticalSpace(12.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: borderColor),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(child: CustomText(text: 'Clear Filter')),
                  ),
                ),
                Utils.horizontalSpace(12),
                Expanded(
                  child: PrimaryButton(
                    text: 'Apply Filter',
                    onPressed: () {},
                    minimumSize: const Size(double.infinity, 50.0),
                  ),
                ),
              ],
            ),
            Utils.verticalSpace(20.0),
          ],
        ),
      ),
    );
  }
}
