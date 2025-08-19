import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/routes/route_names.dart';
import 'presentation/utils/k_string.dart';
import 'presentation/widgets/custom_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // await StateInjector.init();
  runApp(const RestaurantBooking());
}

class RestaurantBooking extends StatelessWidget {
  const RestaurantBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (BuildContext context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: KString.appName,
          initialRoute: RouteNames.splashScreen,
          onGenerateRoute: RouteNames.generateRoutes,
          onUnknownRoute: (RouteSettings settings) {
            return MaterialPageRoute(
              builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ),
            );
          },
          theme: MyTheme.theme,
        );
      },
    );
  }

// MultiBlocProvider buildMultiBlocProvider() {
//   return MultiBlocProvider(
//     providers: StateInjector.blocProviders,
//     child: MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: KString.appName,
//       initialRoute: RouteNames.splashScreen,
//       onGenerateRoute: RouteNames.generateRoutes,
//       onUnknownRoute: (RouteSettings settings) {
//         return MaterialPageRoute(
//           builder: (_) => Scaffold(
//             body:
//             Center(child: Text('No route defined for ${settings.name}')),
//           ),
//         );
//       },
//       home: Container(),
//       // theme: CustomTheme.theme,
//     ),
//   );
// }
}
