// import 'package:flutter/material.dart';
//
// import '../utils/constraints.dart';
// import '../utils/utils.dart';
//
// class DotIndicator extends StatelessWidget {
//   const DotIndicator(
//       {super.key, required this.items, required this.currentIndex});
//
//   final List<dynamic> items;
//   final int currentIndex;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(
//         items.length,
//         (index) {
//           final i = currentIndex == index;
//           return AnimatedContainer(
//             duration: const Duration(seconds: 1),
//             height: Utils.vSize(6.0),
//             width: Utils.hSize(i ? 24.0 : 6.0),
//             margin: Utils.only(right: 4.0),
//             decoration: BoxDecoration(
//               color: i ? primaryColor : primaryColor.withOpacity(0.3),
//               borderRadius: BorderRadius.circular(i ? 50.0 : 5.0),
//               //shape: i ? BoxShape.rectangle : BoxShape.circle,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
