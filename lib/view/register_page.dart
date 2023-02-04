import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reewer/generated/l10n.dart';
import 'package:reewer/model/country.dart';
import 'package:reewer/tools/color_helper.dart';
import 'package:reewer/view/common/auth_button.dart';
import 'package:reewer/view/common/auth_text_field.dart';
import 'package:reewer/view_model/register_view_model.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterViewModel viewModel = Provider.of<RegisterViewModel>(
      context,
      listen: false,
    );
    viewModel.initCountries(context);
    return Scaffold(
      backgroundColor: ColorHelper.generalBackgroundColor,
      body: SafeArea(
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    double textFieldSpacing = 32;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const SizedBox(height: 32),
          _buildTitle(context),
          const SizedBox(height: 32),
          AuthTextField(
            title: S.of(context).phone,
            hint: S.of(context).phoneHint,
            inputType: TextInputType.phone,
          ),
          SizedBox(height: textFieldSpacing),
          AuthTextField(
            title: S.of(context).email,
            hint: S.of(context).emailHint,
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(height: textFieldSpacing),
          AuthTextField(
            title: S.of(context).fullName,
            hint: S.of(context).fullNameHint,
          ),
          SizedBox(height: textFieldSpacing),
          _buildCountryColumn(context),
          SizedBox(height: textFieldSpacing),
          AuthTextField(
            title: S.of(context).city,
            hint: S.of(context).cityHint,
          ),
          SizedBox(height: textFieldSpacing),
          AuthTextField(
            title: S.of(context).address,
            hint: S.of(context).addressHint,
          ),
          const SizedBox(height: 24),
          _buildTermsOfUseRow(context),
          const SizedBox(height: 96),
          _buildLoginButton(context),
          const SizedBox(height: 8),
          AuthButton(label: S.of(context).signUp),
          const SizedBox(height: 8),
          _buildLaterButton(context),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        S.of(context).registerTitle,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildCountryColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).country,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorHelper.authTextFieldBorderColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: _buildCountryDropdown(context),
        ),
      ],
    );
  }

  Widget _buildCountryDropdown(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Consumer<RegisterViewModel>(
        builder: (context, viewModel, child) => DropdownButton<String>(
          value: viewModel.selectedCountryId,
          elevation: 16,
          isExpanded: true,
          underline: const SizedBox(),
          onChanged: (String? newValue) {
            if (newValue != null) {
              viewModel.selectedCountryId = newValue;
            }
          },
          items: viewModel.countries.map<DropdownMenuItem<String>>(
            (Country country) {
              return DropdownMenuItem<String>(
                value: country.id,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        country.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorHelper.dropdownItemTextColor,
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.zero,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Image.asset(
                          country.flag,
                          height: 17,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ).toList(),
          icon: Transform.rotate(
            angle: math.pi / 2,
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 19,
              color: ColorHelper.primaryTextColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTermsOfUseRow(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.1,
          child: SizedBox(
            width: 24,
            height: 24,
            child: Consumer<RegisterViewModel>(
              builder: (context, viewModel, child) => Checkbox(
                value: viewModel.acceptedTermsOfUse,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: const BorderSide(
                    width: 0.5,
                  ),
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: const BorderSide(
                  width: 1,
                  color: ColorHelper.authTextFieldBorderColor,
                ),
                onChanged: (bool? newValue) {
                  if (newValue != null) {
                    viewModel.acceptedTermsOfUse = newValue;
                  }
                },
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                TextSpan(
                  text: S.of(context).termsOfUsePrefix,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ColorHelper.secondaryButtonTextColor,
                  ),
                ),
                TextSpan(
                  text: S.of(context).termsOfUse,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    color: ColorHelper.secondaryButtonTextColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      RegisterViewModel viewModel =
                          Provider.of<RegisterViewModel>(
                        context,
                        listen: false,
                      );
                      viewModel.openTermsOfUse(context);
                    },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    RegisterViewModel viewModel = Provider.of<RegisterViewModel>(
      context,
      listen: false,
    );
    return TextButton(
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          children: [
            TextSpan(
              text: '${S.of(context).alreadyHaveUser} ',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorHelper.primaryTextColor,
              ),
            ),
            TextSpan(
              text: S.of(context).login,
              style: const TextStyle(
                color: ColorHelper.primaryTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
      onPressed: () {
        viewModel.onLoginPressed(context);
      },
    );
  }

  Widget _buildLaterButton(BuildContext context) {
    return TextButton(
      child: Text(
        S.of(context).later,
        style: const TextStyle(
          color: ColorHelper.primaryTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
        ),
      ),
      onPressed: () {},
    );
  }
}
