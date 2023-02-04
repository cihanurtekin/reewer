import 'package:flutter/material.dart';

class TermsOfUseViewModel with ChangeNotifier {
  void onClosePressed(BuildContext context) {
    Navigator.pop(context);
  }

  void onAgreePressed(BuildContext context) {
    Navigator.pop(context);
  }
}
