import 'package:flutter/material.dart';
import 'package:resturant_booking_user/presentation/screens/authentication/verify_identity_screen.dart';

import '../screens/address/address_screen.dart';
import '../screens/authentication/forgot_password_screen.dart';
import '../screens/authentication/login_screen.dart';
import '../screens/authentication/phone_number_verify_screen.dart';
import '../screens/authentication/sign_up_screen.dart';
import '../screens/authentication/update_password_screen.dart';
import '../screens/authentication/verification_code_screen.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/cart/checkout_screen.dart';
import '../screens/details/details_screen.dart';
import '../screens/home/category_screen.dart';
import '../screens/home/featured_food_screen.dart';
import '../screens/home/new_arrival_screen.dart';
import '../screens/main_screen/main_screen.dart';
import '../screens/notification/notification_screen.dart';
import '../screens/on_boarding/on_boarding_screen.dart';
import '../screens/payment/payment_screen.dart';
import '../screens/profile/about_us_screen.dart';
import '../screens/profile/account_screen.dart';
import '../screens/profile/contact_us_screen.dart';
import '../screens/profile/faq_screen.dart';
import '../screens/profile/password_change_screen.dart';
import '../screens/profile/privacy_policy_screen.dart';
import '../screens/profile/terms_condition_screen.dart';
import '../screens/profile/update_profile_screen.dart';
import '../screens/review/review_sreen.dart';
import '../screens/splash/splash_screen.dart';

class RouteNames {
  static const String splashScreen = '/splashScreen';
  static const String onBoardingScreen = '/onBoardingScreen';
  static const String loginScreen = '/loginScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String forgotPasswordScreen = '/forgotPasswordScreen';
  static const String verificationCodeScreen = '/verificationCodeScreen';
  static const String updatePasswordScreen = '/updatePasswordScreen';

  static const String changePasswordScreen = '/changePasswordScreen';
  static const String mainScreen = '/mainScreen';

  static const String categoryScreen = '/categoryScreen';
  static const String featureFoodScreen = '/featureFoodScreen';
  static const String newArrivalScreen = '/newArrivalScreen';

  static const String privacyPolicyScreen = '/privacyPolicyScreen';
  static const String termsConditionScreen = '/termsConditionScreen';
  static const String faqScreen = '/faqScreen';
  static const String contactUsScreen = '/contactUsScreen';
  static const String aboutUsScreen = '/aboutUsScreen';

  static const String accountScreen = '/accountScreen';
  static const String updateProfileScreen = '/updateProfileScreen';
  static const String detailsScreen = '/detailsScreen';
  static const String cartScreen = '/cartScreen';
  static const String checkoutScreen = '/checkoutScreen';
  static const String addressScreen = '/addressScreen';
  static const String paymentScreen = '/paymentScreen';

  static const String notificationScreen = '/notificationScreen';

  static const String reviewScreen = '/reviewScreen';
  static const String verifyIdentityScreen = '/verifyIdentityScreen';
  static const String phoneNumberVerifyScreen = '/phoneNumberVerifyScreen';

  //
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashScreen(),
        );

      case RouteNames.onBoardingScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const OnBoardingScreen(),
        );

      case RouteNames.loginScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LoginScreen(),
        );

      case RouteNames.signUpScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SignUpScreen(),
        );
      case RouteNames.forgotPasswordScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ForgotPasswordScreen(),
        );
      case RouteNames.verificationCodeScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const VerificationCodeScreen(),
        );
      case RouteNames.updatePasswordScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const UpdatePasswordScreen(),
        );

      case RouteNames.mainScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const MainScreen(),
        );

      case RouteNames.categoryScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const CategoryScreen(),
        );

      case RouteNames.featureFoodScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const FeatureFoodScreen(),
        );

      case RouteNames.newArrivalScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const NewArrivalScreen(),
        );

      case RouteNames.changePasswordScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ChangePasswordScreen(),
        );

      case RouteNames.detailsScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const DetailsScreen(),
        );

      case RouteNames.cartScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const CartScreen(),
        );

      case RouteNames.checkoutScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const CheckoutScreen(),
        );

      case RouteNames.addressScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AddressScreen(),
        );
      case RouteNames.paymentScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PaymentScreen(),
        );

      case RouteNames.notificationScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const NotificationScreen(),
        );

      case RouteNames.reviewScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ReviewScreen(),
        );

      // case RouteNames.scheduleScreen:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const ScheduleScreen());
      //
      //
      // case RouteNames.addNewServiceScreen:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const AddNewServiceScreen());
      //
      // case RouteNames.bookingDetailsScreen:
      //   //  final slug = settings.arguments as String;
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const BookingDetailsScreen());

      case RouteNames.accountScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AccountScreen(),
        );

      case RouteNames.updateProfileScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const UpdateProfileScreen(),
        );

      case RouteNames.privacyPolicyScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PrivacyPolicyScreen(),
        );

      case RouteNames.termsConditionScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const TermsConditionScreen(),
        );

      case RouteNames.faqScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const FaqScreen(),
        );
      case RouteNames.contactUsScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ContactUsScreen(),
        );

      case RouteNames.aboutUsScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AboutUsScreen(),
        );
      case RouteNames.verifyIdentityScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const VerifyIdentityScreen(),
        );

      case RouteNames.phoneNumberVerifyScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PhoneNumberVerifyScreen(),
        );

      // case RouteNames.homeScreen:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => HomeScreen());
      // case RouteNames.bookingScreen:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const BookingScreen());
      // case RouteNames.serviceScreen:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const ServiceScreen());
      // case RouteNames.walletScreen:
      //   return MaterialPageRoute(
      //       settings: settings, builder: (_) => const WalletScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(child: Text('No Route Found ${settings.name}')),
              ),
        );
    }
  }
}
