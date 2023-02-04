import 'package:flutter/material.dart';
import 'package:reewer/model/country.dart';
import 'package:reewer/tools/constants.dart';
import 'package:reewer/tools/routes.dart';

class RegisterViewModel with ChangeNotifier {
  bool _acceptedTermsOfUse = false;

  bool get acceptedTermsOfUse => _acceptedTermsOfUse;

  set acceptedTermsOfUse(bool value) {
    _acceptedTermsOfUse = value;
    notifyListeners();
  }

  List<Country> _countries = [];

  List<Country> get countries => _countries;

  String? _selectedCountryId;

  String? get selectedCountryId => _selectedCountryId;

  set selectedCountryId(String? value) {
    _selectedCountryId = value;
    notifyListeners();
  }

  void initCountries(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _countries = [];
      _countries.addAll(Constants.countries(context));
      _selectedCountryId = _countries.first.id;
      notifyListeners();
    });
  }

  void openTermsOfUse(BuildContext context) {
    Navigator.pushNamed(context, Routes.termsOfUsePageKey);
  }

  void onLoginPressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.loginPageKey);
  }
}
