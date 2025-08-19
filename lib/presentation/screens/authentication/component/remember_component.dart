import 'package:flutter/material.dart';

import '../../../utils/constraints.dart';
import '../../../utils/utils.dart';

class RememberComponent extends StatefulWidget {
  const RememberComponent({super.key});

  @override
  State<RememberComponent> createState() => _RememberComponentState();
}

class _RememberComponentState extends State<RememberComponent> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    print('status $isActive');
    return GestureDetector(
      onTap: () => setState(() => isActive = !isActive),
      child: AnimatedContainer(
        duration: kDuration,
        height: 20.0,
        width: 20.0,
        alignment: Alignment.center,
        margin: Utils.only(right: 10.0, left: 2.0, top: 4.0),
        decoration: BoxDecoration(
          color: isActive ? primaryColor : transparent,
          borderRadius: Utils.borderRadius(r: 3.0),
          border: Border.all(color: primaryColor),
        ),
        child: Padding(
          padding: Utils.only(bottom: 4.0),
          child: const Icon(
            Icons.check,
            size: 18.0,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
