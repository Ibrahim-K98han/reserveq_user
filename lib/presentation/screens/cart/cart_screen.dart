import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../routes/route_names.dart';
import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_image.dart';
import '../../widgets/custom_sliver_app_bar.dart';
import '../../widgets/primary_button.dart';
import 'component/cart_component.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
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
              CustomSliverAppBar(title: 'My Carts'),
              SliverPadding(
                padding: Utils.symmetric(),
                sliver: SliverList.list(
                  children: List.generate(
                    3,
                    (index) => Slidable(
                      key: ValueKey(index),
                      startActionPane: ActionPane(
                        motion: const BehindMotion(),
                        dragDismissible: false,
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              print('delete');
                              print('index $index');
                            },
                            foregroundColor: primaryColor,
                            icon: Icons.delete,
                            label: 'Delete',
                            autoClose: false,
                          ),
                          SlidableAction(
                            onPressed: (context) => print('closed'),
                            icon: Icons.clear,
                            label: 'Close',
                          ),
                        ],
                      ),
                      // endActionPane: ActionPane(
                      //   motion: const DrawerMotion(),
                      //   children: [
                      //     SlidableAction(
                      //       onPressed: (context) {},
                      //       icon: Icons.delete,
                      //       foregroundColor: primaryColor,
                      //     ),
                      //     SlidableAction(
                      //       onPressed: (context) {},
                      //       icon: Icons.clear,
                      //     ),
                      //   ],
                      // ),
                      child: const CartComponent(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.1,
        width: size.width,
        color: whiteColor,
        child: Padding(
          padding: Utils.symmetric(v: 14.0),
          child: PrimaryButton(
            text: 'Precessed to Checkout',
            onPressed:
                () => Navigator.pushNamed(context, RouteNames.checkoutScreen),
          ),
        ),
      ),
    );
  }
}
