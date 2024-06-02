import 'package:quiz/styled_text.dart';
import 'package:flutter/material.dart';

const Color foregroundColor = Colors.white;
const String text = 'Roll Dice';

class StyledTextButton extends StatelessWidget {
  const StyledTextButton(this.onPressedFunction, {super.key});

  final VoidCallback onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedFunction,
      style: TextButton.styleFrom(
        foregroundColor: foregroundColor,
      ),
      child: const StyledText(
        text,
      ),
    );
  }
}
