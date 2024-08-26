import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double fontSize = 24.0;
const FontWeight fontWeight = FontWeight.bold;
const TextAlign textAlignment = TextAlign.center;

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key, required this.fontColor});

  final String text;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlignment,
    );
  }
}
