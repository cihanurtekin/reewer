import 'package:flutter/material.dart';
import 'package:reewer/tools/color_helper.dart';

class AuthButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;

  const AuthButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.zero,
          /*backgroundColor: */
        ),
        onPressed: onPressed,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                ColorHelper.authButtonBackgroundGradientColor1,
                ColorHelper.authButtonBackgroundGradientColor2,
              ],
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorHelper.authButtonTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
