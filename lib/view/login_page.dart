import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reewer/generated/l10n.dart';
import 'package:reewer/tools/assets.dart';
import 'package:reewer/tools/color_helper.dart';
import 'package:reewer/view/common/auth_button.dart';
import 'package:reewer/view/common/auth_text_field.dart';
import 'package:reewer/view_model/login_view_model.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.generalBackgroundColor,
      body: SafeArea(
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 32),
                _buildTitle(context),
                const SizedBox(height: 32),
                AuthTextField(
                  controller: _phoneController,
                  title: S.of(context).phone,
                  hint: S.of(context).phoneHint,
                  inputType: TextInputType.phone,
                ),
                const SizedBox(height: 32),
                _buildOrRow(context),
                const SizedBox(height: 32),
                _buildSocialSignInButton(context),
                const SizedBox(height: 48),
                _buildSignUpButton(context),
              ],
            ),
          ),
          Column(
            children: [
              _buildSendCodeButton(context),
              const SizedBox(height: 8),
              _buildLaterButton(context),
              const SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        S.of(context).loginTitle,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildOrRow(BuildContext context) {
    return Row(
      children: [
        _buildDivider(),
        const SizedBox(width: 24),
        Text(
          S.of(context).or.toLowerCase(),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: ColorHelper.secondaryTextColor,
          ),
        ),
        const SizedBox(width: 24),
        _buildDivider(),
      ],
    );
  }

  Widget _buildDivider() {
    return const Expanded(
      child: Divider(
        color: ColorHelper.authDividerColor,
        thickness: 1,
      ),
    );
  }

  Widget _buildSocialSignInButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: ColorHelper.socialButtonBorderColor,
        ),
        shape: const StadiumBorder(),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Platform.isIOS ? Assets.appleLogo : Assets.googlelogo,
            height: 18,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(width: 8),
          Text(
            Platform.isIOS ? S.of(context).apple : S.of(context).google,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorHelper.secondaryButtonTextColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    LoginViewModel viewModel = Provider.of<LoginViewModel>(
      context,
      listen: false,
    );
    return TextButton(
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          children: [
            TextSpan(
              text: '${S.of(context).notRegisteredYet} ',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorHelper.primaryTextColor,
              ),
            ),
            TextSpan(
              text: S.of(context).signUp,
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
        viewModel.onSignUpPressed(context);
      },
    );
  }

  _buildSendCodeButton(BuildContext context) {
    LoginViewModel viewModel = Provider.of<LoginViewModel>(
      context,
      listen: false,
    );
    return AuthButton(
      label: S.of(context).sendCode,
      onPressed: () {
        viewModel.onSendCodePressed(context, _phoneController.text.trim());
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
