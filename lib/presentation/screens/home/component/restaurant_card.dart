// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../../../../core/router_name.dart';
// import '../../../../utils/constants.dart';
// import '../../../../widgets/custom_image.dart';
// import '../../../../widgets/favorite_button.dart';
// import '../../../utils/constraints.dart';
// import '../model/restureant_model.dart';
//
// class RestureantCard extends StatelessWidget {
//   final RestureantModel productModel;
//   final double? width;
//   const RestureantCard({
//     Key? key,
//     required this.productModel,
//     this.width,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(4),
//         border: Border.all(color: borderColor),
//       ),
//       child: InkWell(
//         onTap: () {
//           Navigator.pushNamed(context, RouteNames.productDetailsScreen);
//         },
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildImage(),
//             const SizedBox(height: 12),
//             _buildContent(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildContent() {
//     return Container(
//       padding: const EdgeInsets.only(left: 10, right: 3),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Text(
//                 productModel.address,
//                 style:
//                     const TextStyle(fontSize: 14, height: 1, color: grayColor),
//               ),
//               const Spacer(),
//               const Icon(Icons.star, size: 14, color: redColor),
//               Text(
//                 productModel.rating.toStringAsFixed(1),
//                 style: const TextStyle(color: secondaryColor, height: 1),
//               ),
//             ],
//           ),
//           const SizedBox(height: 6),
//           Text(
//             productModel.name,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: GoogleFonts.roboto(fontWeight: FontWeight.w700, height: 1),
//           ),
//           const SizedBox(height: 6),
//           Text(
//             "${productModel.totalItem} Item",
//             style: GoogleFonts.roboto(
//                 color: redColor, fontSize: 16, fontWeight: FontWeight.w700),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildImage() {
//     return SizedBox(
//       height: 120,
//       child: Stack(
//         fit: StackFit.expand,
//         children: [
//           ClipRRect(
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
//             child: CustomImage(path: productModel.image, fit: BoxFit.cover),
//           ),
//           Positioned(
//             top: 7,
//             right: 7,
//             child: Container(
//               height: 22,
//               padding: const EdgeInsets.symmetric(horizontal: 6),
//               decoration: BoxDecoration(
//                   color: redColor, borderRadius: BorderRadius.circular(2)),
//               child: Text(
//                 '-${productModel.offer.toStringAsFixed(0)}%',
//                 style: const TextStyle(fontSize: 14, color: Colors.white),
//               ),
//             ),
//           ),
//           // Positioned(
//           //   top: 7,
//           //   left: 7,
//           //   child: FavoriteButton(productId: productModel.id),
//           // ),
//         ],
//       ),
//     );
//   }
// }
