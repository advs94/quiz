import 'package:flutter/material.dart';

const Color foregroundColor = Colors.white;
const Color textColor = Colors.white;
const double textFontSize = 14.0;

class StyledTextButton extends StatelessWidget {
  const StyledTextButton(this.onPressedFunction, this.text,
      {super.key, this.iconData});

  final void Function() onPressedFunction;
  final IconData? iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressedFunction,
      style: OutlinedButton.styleFrom(
        foregroundColor: foregroundColor,
        side: const BorderSide(
          color: Colors.transparent,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      icon: Icon(iconData),
      label: Text(
        text,
        style: const TextStyle(
          color: textColor,
          fontSize: textFontSize,
        ),
      ),
    );
  }
}
