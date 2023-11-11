import 'package:flutter/material.dart';
import 'package:todo/constant/app_text_style.dart';


class GlobalButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color? color;
  final TextStyle? textStyle;
  const GlobalButtonWidget({
    Key? key,
    this.onPressed,
    required this.text,
    this.color,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () => onPressed!(),
        child: Text(
          text,
          style:
              AppTextStyle.buttonText(context),
        ),
      ),
    );
  }
}
