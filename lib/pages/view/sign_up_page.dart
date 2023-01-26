import 'package:animated_sign_up/components/custom_text_field.dart';
import 'package:animated_sign_up/components/hover_animated_widget.dart';
import 'package:animated_sign_up/constants/colors.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: HoverAnimatedWidget(
            color: PRIMARY_COLOR,
            distance: 8,
            size: const Size(400, 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const customTextField(
                  hintText: "Name",
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: customTextField(
                    hintText: "E-Mail",
                  ),
                ),
                const customTextField(
                  hintText: "Password",
                ),
                const SizedBox(
                  height: 16,
                ),
                HoverAnimatedWidget(
                  color: BUTTON_COLOR,
                  distance: 4,
                  size: const Size(100, 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: BUTTON_COLOR,
                        foregroundColor: BACKGROUND_COLOR,
                        elevation: 0,
                        minimumSize: const Size(100, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {},
                    child: const Text("Sign Up"),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
