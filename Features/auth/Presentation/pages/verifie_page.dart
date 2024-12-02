import 'package:flutter/material.dart';
import '../Widget/back_grond.dart';
import '../Widget/button_text.dart';
import '../Widget/toptext.dart';
import '../Widget/undre_line_text.dart';

class VerifiePage extends StatelessWidget {
  const VerifiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background image
            const Backgrond(),

            // Form content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App title
                const Toptext(
                    text: "check your email to verifie than press continue"),

                const Spacer(),
                Button(
                  buttonText: 'continue',
                  formKey: null,
                ),
                // Spacer to push the "Create your account" text to the bottom
                const Spacer(),
                // Create Account Text centered at the bottom
                Undrelinetext(
                  text: " back to main page",
                  fun: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
