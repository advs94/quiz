import 'package:flutter/material.dart';

const Alignment beginAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;
const Color topLeftColor = Color.fromARGB(255, 63, 35, 111);
const Color bottomRightColor = Colors.deepPurple;

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
