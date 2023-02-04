import 'package:flutter/material.dart';
import 'package:reewer/tools/color_helper.dart';

class AuthTextField extends StatelessWidget {
  final InputBorder _border;

  final String title;
  final String? hint;
  final TextInputType? inputType;
  final TextEditingController? controller;

  AuthTextField({
    Key? key,
    required this.title,
    this.hint,
    this.inputType = TextInputType.text,
    this.controller,
  })  : _border = OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorHelper.authTextFieldBorderColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          keyboardType: inputType,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorHelper.secondaryTextColor,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 12,
            ),
            border: _border,
            enabledBorder: _border,
            disabledBorder: _border,
            errorBorder: _border,
            focusedBorder: _border,
            focusedErrorBorder: _border,
          ),
        ),
      ],
    );
  }
}
