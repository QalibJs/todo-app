import 'package:flutter/material.dart';

class AppNavigators {
  AppNavigators._();

  static go(context, widget) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget),
      );
  static goDelete(context, widget) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context)=> widget),
        (route) => false,
      );
}
