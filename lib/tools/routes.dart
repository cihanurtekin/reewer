import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reewer/view/login_page.dart';
import 'package:reewer/view/phone_verification_page.dart';
import 'package:reewer/view/register_page.dart';
import 'package:reewer/view/terms_of_use_page.dart';
import 'package:reewer/view_model/login_view_model.dart';
import 'package:reewer/view_model/phone_verification_view_model.dart';
import 'package:reewer/view_model/register_view_model.dart';
import 'package:reewer/view_model/terms_of_use_view_model.dart';

class Routes {
  static const String loginPageKey = '/login_page';
  static const String registerPageKey = '/register_page';
  static const String termsOfUsePageKey = 'terms_of_use_page';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      loginPageKey: (BuildContext context) => ChangeNotifierProvider(
            create: (context) => LoginViewModel(),
            child: LoginPage(),
          ),
      registerPageKey: (BuildContext context) => ChangeNotifierProvider(
            create: (context) => RegisterViewModel(),
            child: const RegisterPage(),
          ),
      termsOfUsePageKey: (BuildContext context) => ChangeNotifierProvider(
            create: (context) => TermsOfUseViewModel(),
            child: const TermsOfUsePage(),
          ),
    };
  }

  static openPhoneVerificationPage(BuildContext context, String phone) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider(
          create: (context) => PhoneVerificationViewModel(phone),
          child: const PhoneVerificationPage(),
        ),
      ),
    );
  }
}
