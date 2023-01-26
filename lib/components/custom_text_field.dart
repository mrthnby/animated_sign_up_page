import 'package:animated_sign_up/constants/colors.dart';
import 'package:flutter/material.dart';

import 'hover_animated_widget.dart';

class customTextField extends StatelessWidget {
  final String hintText;

  const customTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return HoverAnimatedWidget(
      border: Border.all(),
      size: const Size(300, 60),
      distance: 6,
      color: BACKGROUND_COLOR,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration.collapsed(
              filled: true,
              fillColor: BACKGROUND_COLOR,
              focusColor: BACKGROUND_COLOR,
              border: InputBorder.none,
              hoverColor: BACKGROUND_COLOR,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }
}
