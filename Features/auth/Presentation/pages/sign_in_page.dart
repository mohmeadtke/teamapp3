import 'package:flutter/material.dart';
import '../Widget/back_grond.dart';
import '../Widget/form.dart';
import '../Widget/toptext.dart';
import '../Widget/undre_line_text.dart';
import 'log_in_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                const Toptext(text: "Team App"),

                const Spacer(),
                // Form
                Formm(
                  buttonText: 'sign-in',
                  x: 0,
                ),
                // Spacer to push the "Create your account" text to the bottom
                const Spacer(),
                // Create Account Text centered at the bottom
                Undrelinetext(
                  text: "create your acount",
                  fun: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInPage()),
                    );
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
