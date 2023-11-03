import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/constant/app_colors.dart';
import 'package:todo/constant/app_input_style_widget.dart';
import 'package:todo/constant/app_text_style.dart';

class GlobalInputWidget extends StatefulWidget {
  final String hintText;
  final Widget? suffixIcon;
  final int? maxLines;
  final Widget? prefixIcon;
  final bool? isPassword;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onTap;
  const GlobalInputWidget({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.isPassword,
    this.controller,
    this.inputType,
    this.validator,
    this.inputFormatters,
    this.onTap,
    this.maxLines,
  }) : super(key: key);

  @override
  State<GlobalInputWidget> createState() => _GlobalInputWidgetState();
}

class _GlobalInputWidgetState extends State<GlobalInputWidget> {
  bool isSecure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines,
      style: AppTextStyle.smallText,
      onTap: () => widget.onTap,
      obscuringCharacter: "*",
      obscureText: isSecure ? false : (widget.isPassword! ? true : false),
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.inputType,
      validator: (value) => widget.validator!(value),
      controller: widget.controller,
      textInputAction: TextInputAction.done,
      cursorColor: AppColors.white,
      decoration: InputDecoration(
        hintStyle: AppTextStyle.smallText,
        prefixIcon: widget.prefixIcon,
        suffix: widget.isPassword!
            ? GestureDetector(
                onTap: () {
                  setState(() {});
                  isSecure = !isSecure;
                },
                child: Icon(
                  isSecure
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  size: 19,
                ),
              )
            : null,
        hintText: widget.hintText,
        border: AppInputStyleWidget.boder,
      ),
    );
  }
}
