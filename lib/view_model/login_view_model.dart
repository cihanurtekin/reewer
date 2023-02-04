import 'package:flutter/material.dart';
import 'package:reewer/tools/routes.dart';

class LoginViewModel with ChangeNotifier {
  void onSignUpPressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.registerPageKey);
  }

  void onSendCodePressed(BuildContext context, String phone) {
    Routes.openPhoneVerificationPage(context, phone);
  }
}
