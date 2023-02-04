import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reewer/generated/l10n.dart';
import 'package:reewer/tools/color_helper.dart';
import 'package:reewer/view/common/auth_button.dart';
import 'package:reewer/view/common/code_input_text_field.dart';
import 'package:reewer/view_model/phone_verification_view_model.dart';

class PhoneVerificationPage extends StatelessWidget {
  const PhoneVerificationPage({Key? key}) : super(key: key);

  final double _horizontalPadding = 16;

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ListView(
            children: [
              const SizedBox(height: 32),
              _buildTitle(context),
              const SizedBox(height: 32),
              _buildCodeSentDescriptionText(context),
              _buildChangeButton(context),
              const SizedBox(height: 64),
              _buildVerificationCodeText(context),
              const SizedBox(height: 32),
              _buildVerificationCodeTextField(),
              const SizedBox(height: 32),
              _buildSendAgainButton(context),
            ],
          ),
        ),
        Column(
          children: [
            _buildLoginButton(context),
            const SizedBox(height: 16),
          ],
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          S.of(context).loginTitle,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildCodeSentDescriptionText(BuildContext context) {
    PhoneVerificationViewModel viewModel =
        Provider.of<PhoneVerificationViewModel>(context, listen: false);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '${S.of(context).codeSentDescription} ${viewModel.phone}',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildChangeButton(BuildContext context) {
    PhoneVerificationViewModel viewModel =
    Provider.of<PhoneVerificationViewModel>(context, listen: false);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _horizontalPadding > 7 ? _horizontalPadding - 7 : 0,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          child: Text(
            S.of(context).change,
            style: const TextStyle(
              color: ColorHelper.highlightedButtonColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
          ),
          onPressed: () {
            viewModel.onChangePressed(context);
          },
        ),
      ),
    );
  }

  Widget _buildVerificationCodeText(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).verificationCode,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildVerificationCodeTextField() {
    return CodeInputTextField(
      length: 4,
      itemSpacing: 8,
      inputTextColor: ColorHelper.primaryTextColor,
    );
  }

  Widget _buildSendAgainButton(BuildContext context) {
    PhoneVerificationViewModel viewModel =
        Provider.of<PhoneVerificationViewModel>(context, listen: false);
    return TextButton(
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          children: [
            TextSpan(
              text: '${S.of(context).didNotGetCode} ',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorHelper.primaryTextColor,
              ),
            ),
            TextSpan(
              text: S.of(context).sendAgain,
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
        viewModel.onSendAgainPressed(context);
      },
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: AuthButton(
        label: S.of(context).login,
      ),
    );
  }
}
