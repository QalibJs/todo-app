import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constant/app_input_style_widget.dart';
import '../../constant/app_text_style.dart';

class GlobalInputWidget extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final bool isPassword;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onTap;
  const GlobalInputWidget({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.inputType,
    this.validator,
    this.inputFormatters,
    this.onTap,
    required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.smallText(context),
      onTap: () => onTap,
      obscureText: isPassword ? true : false,
      inputFormatters: inputFormatters,
      keyboardType: inputType,
      validator: (value) => validator!(value),
      controller: controller,
      textInputAction: TextInputAction.done,
      cursorColor: Theme.of(context).colorScheme.primary,
      decoration: InputDecoration(
        hintStyle: AppTextStyle.smallText(context),
        prefixIcon: prefixIcon,
        hintText: hintText,
        border: AppInputStyleWidget.boder,
      ),
    );
  }
}
