import 'package:flutter/material.dart';

const Alignment beginAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;
const Color topLeftColor = Color.fromARGB(255, 78, 13, 151);
const Color bottomRightColor = Color.fromARGB(255, 107, 15, 168);

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.widget, {super.key});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            topLeftColor,
            bottomRightColor,
          ],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: widget,
    );
  }
}
