import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color splashColor;
  final VoidCallback onPressed;

  const CustomButton({
    required Key key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.splashColor,
    required this.onPressed
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      hoverElevation: 0.0,
      focusElevation: 0.0,
      highlightElevation: 0.0,
      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 25.0, right: 25.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      fillColor: backgroundColor,
      splashColor: splashColor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}