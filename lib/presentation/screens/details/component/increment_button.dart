import 'package:flutter/material.dart';

import '../../../utils/constraints.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_text.dart';

class IncrementButton extends StatefulWidget {
  const IncrementButton({super.key});

  @override
  State<IncrementButton> createState() => _IncrementButtonState();
}

class _IncrementButtonState extends State<IncrementButton> {
  int count = 2;

  void incrementDecrement(bool isIncrement) {
    if (isIncrement) {
      setState(() => count++);
    } else {
      if (count > 1) {
        setState(() => count--);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Utils.all(value: 4.0),
      decoration: BoxDecoration(
        // color: primaryColor,
        // border: Border.all(color: primaryColor),
        borderRadius: Utils.borderRadius(),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => incrementDecrement(false),
            child: Container(
              height: Utils.vSize(40.0),
              width: Utils.vSize(40.0),
              alignment: Alignment.center,
              padding: Utils.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF8ED),
                borderRadius: Utils.borderRadius(),
              ),
              child: const Icon(
                Icons.minimize_outlined,
                color: primaryColor,
              ),
            ),
          ),
          Container(
            height: Utils.vSize(40.0),
            width: Utils.vSize(40.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: Utils.borderRadius(),
            ),
            child: CustomText(
              text: count.toString(),
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          GestureDetector(
            onTap: () => incrementDecrement(true),
            child: Container(
              height: Utils.vSize(40.0),
              width: Utils.vSize(40.0),
              alignment: Alignment.center,
              padding: Utils.only(left: 2.0),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: Utils.borderRadius(),
              ),
              child: const Icon(
                Icons.add,
                color: whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
