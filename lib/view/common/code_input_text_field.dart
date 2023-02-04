import 'package:flutter/material.dart';
import 'package:reewer/tools/color_helper.dart';

class CodeInputTextField extends StatelessWidget {
  final int length;
  final double itemSpacing;
  final Color? inputBackgroundColor;
  final Color? inputTextColor;
  final void Function(String)? onCompleted;

  final List<TextEditingController> _inputControllers = [];
  final List<FocusNode> _focusNodes = [];

  final List<String> _inputValues = [];

  CodeInputTextField({
    super.key,
    required this.length,
    this.itemSpacing = 4.0,
    this.inputBackgroundColor,
    this.inputTextColor,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey<FormState>(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildInputFields(context),
      ),
    );
  }

  List<Widget> _buildInputFields(BuildContext context) {
    List<Widget> inputFields = [];
    for (int i = 0; i < length; i++) {
      inputFields.add(_buildInputTextField(context, i));
      _inputValues.add('');
      if (i != length - 1) {
        inputFields.add(SizedBox(width: itemSpacing));
      }
    }
    FocusScope.of(context).requestFocus(_focusNodes[0]);
    return inputFields;
  }

  Widget _buildInputTextField(BuildContext context, int index) {
    TextEditingController inputController = TextEditingController();
    FocusNode focusNode = FocusNode();
    _inputControllers.add(inputController);
    _focusNodes.add(focusNode);
    return SizedBox(
      height: 56,
      child: AspectRatio(
        aspectRatio: 0.9,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: inputBackgroundColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: ColorHelper.authTextFieldBorderColor,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              focusNode: focusNode,
              controller: inputController,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 18,
                color: inputTextColor,
                fontWeight: FontWeight.w400,
              ),
              maxLength: 1,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                counterText: "",
              ),
              onChanged: (String value) {
                _onInputValueChanged(context, index, value);
              },
            ),
          ),
        ),
      ),
    );
  }

  void _onInputValueChanged(BuildContext context, int index, String value) {
    bool isAllInputsCompleted = false;
    String result = '';

    if (value.trim().isNotEmpty) {
      isAllInputsCompleted = true;
      _inputValues[index] = value;

      for (int i = 0; i < length; i++) {
        String currentInput = _inputValues[i].trim();
        result += currentInput;
        if (currentInput.length != 1) {
          isAllInputsCompleted = false;
        }
      }
    }

    if (isAllInputsCompleted) {
      onCompleted?.call(result);
    } else if (value.trim().isNotEmpty && index != length - 1) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.trim().isEmpty && index != 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }
}
