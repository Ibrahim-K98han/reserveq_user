import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import '../../../utils/constraints.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_text.dart';
import 'tabs/ingredients_tab_content.dart';
import 'tabs/overview_tab_content.dart';

class DetailInformation extends StatefulWidget {
  const DetailInformation({Key? key}) : super(key: key);

  @override
  State<DetailInformation> createState() => _DetailInformationState();
}

class _DetailInformationState extends State<DetailInformation> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      itemCount: detailScreen.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, position) {
        return Column(
          children: [
            Container(
              padding: Utils.symmetric(h: 6.0, v: 6.0),
              decoration: BoxDecoration(
                borderRadius: Utils.borderRadius(),
                // border: Border.all(color: grayColor.withOpacity(0.2)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(tabButton.length, (index) {
                  final active = _currentTab == index;
                  return GestureDetector(
                    onTap: () => setState(() => _currentTab = index),
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      alignment: Alignment.center,
                      padding: Utils.symmetric(h: 40.0, v: 16.0),
                      decoration: BoxDecoration(
                        color: active ? lightRedColor : fillColor,
                        borderRadius: Utils.borderRadius(r: 8.0),
                      ),
                      child: CustomText(
                        text: tabButton[index],
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                        color: active ? primaryColor : blackColor,
                      ),
                    ),
                  );
                }),
              ),
            ),
            //Utils.verticalSpace(12.0),
            Padding(
              padding: Utils.symmetric(v: 26.0, h: 0.0).copyWith(bottom: 0.0),
              child: detailScreen[_currentTab],
            ),
          ],
        );
      },
    );
  }
}

List<Widget> detailScreen = [
  const IngredientTabContent(),
  const OverViewTabContent(),
  //const ClientOverViewTabContent()
];
final List<String> tabButton = ['Ingredients', 'OverView'];
