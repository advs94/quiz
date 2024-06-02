import 'package:flutter/material.dart';

const double fontSize = 28.0;

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: fontSize,
      ),
    );
  }
}
