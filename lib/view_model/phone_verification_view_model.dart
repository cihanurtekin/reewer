import 'package:flutter/material.dart';
import 'package:reewer/tools/routes.dart';

class PhoneVerificationViewModel with ChangeNotifier {
  final String _phone;

  String get phone => _phone;

  PhoneVerificationViewModel(String phone) : _phone = phone;

  void onSendAgainPressed(BuildContext context) {}

  void onChangePressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.loginPageKey);
  }
}
