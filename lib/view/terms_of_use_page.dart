import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reewer/generated/l10n.dart';
import 'package:reewer/tools/color_helper.dart';
import 'package:reewer/view/common/auth_button.dart';
import 'package:reewer/view_model/terms_of_use_view_model.dart';

class TermsOfUsePage extends StatelessWidget {
  const TermsOfUsePage({Key? key}) : super(key: key);

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
      children: [
        const SizedBox(height: 32),
        _buildTitleRow(context),
        _buildDivider(),
        const SizedBox(height: 24),
        _buildContentText(context),
        _buildDivider(),
        const SizedBox(height: 8),
        _buildAgreeButton(context),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildTitleRow(BuildContext context) {
    TermsOfUseViewModel viewModel = Provider.of<TermsOfUseViewModel>(
      context,
      listen: false,
    );
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _horizontalPadding > 16 ? _horizontalPadding - 16 : 0,
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 32,
              color: ColorHelper.primaryIconColor,
            ),
            onPressed: () {
              viewModel.onClosePressed(context);
            },
          ),
          const SizedBox(width: 8),
          Text(
            S.of(context).termsOfUseTitle,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentText(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
        child: SingleChildScrollView(
          child: Text(
            S.of(context).termsOfUseContent,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      color: ColorHelper.authDividerColor,
      thickness: 1,
    );
  }

  Widget _buildAgreeButton(BuildContext context) {
    TermsOfUseViewModel viewModel = Provider.of<TermsOfUseViewModel>(
      context,
      listen: false,
    );
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
      child: AuthButton(
        label: S.of(context).agree,
        onPressed: () {
          viewModel.onAgreePressed(context);
        },
      ),
    );
  }
}
