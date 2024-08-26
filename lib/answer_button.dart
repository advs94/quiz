import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color backgroundColor = Color.fromARGB(255, 33, 1, 95);
const Color foregroundColor = Colors.white;
const Color fontColor = Colors.white;
const TextAlign textAlignment = TextAlign.center;

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.onPressedFunction, this.text,
      {super.key, this.iconData});

  final void Function() onPressedFunction;
  final IconData? iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.lato(
          color: fontColor,
        ),
        textAlign: textAlignment,
      ),
    );
  }
}
