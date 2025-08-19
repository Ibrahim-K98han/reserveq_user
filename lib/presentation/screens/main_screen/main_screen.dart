import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constraints.dart';
import '../../utils/k_images.dart';
import '../../widgets/custom_image.dart';
import '../home/home_screen.dart';
import '../notification/notification_screen.dart';
import '../order/order_screen.dart';
import '../profile/profile_screen.dart';
import '../search/search_screen.dart';
import 'component/bottom_navigation_bar.dart';
import 'component/main_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MainController _controller = MainController();
  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    //const FoodScreen(),
    OrderScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: StreamBuilder<int>(

        initialData: 0,
        stream: _controller.naveListener.stream,
        builder: (context, snapshot) {
          final currentIndex = snapshot.data ?? 0;
          return SizedBox(
            width: 60.w,
            height: 60.h,
            child: FloatingActionButton(
              elevation: 0,
              onPressed: () => _controller.changeNav(2),
              backgroundColor: currentIndex == 2 ? primaryColor : blackColor,
              shape: const CircleBorder(),
              child: const CustomImage(path: KImages.chef),
            ),
          );
        },
      ),
      body: StreamBuilder<int>(
        initialData: 0,
        stream: _controller.naveListener.stream,
        builder: (context, AsyncSnapshot<int> snapshot) {
          int item = snapshot.data ?? 0;
          return _screens[item];
        },
      ),
      bottomNavigationBar: MyBottomNavigationBar(controller: _controller),
    );
  }
}
