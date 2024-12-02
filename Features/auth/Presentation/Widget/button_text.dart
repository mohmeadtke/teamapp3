import 'package:flutter/material.dart';
import '../pages/verifie_page.dart';
import 'vildate_form.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.buttonText, required this.formKey});
  final String buttonText;
  // final Function submitForm;
  final Vildateform vildateform = Vildateform();
  final dynamic formKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color.fromARGB(255, 129, 129, 123), // background color
          ),
          onPressed: () {
            if (formKey.currentState?.validate() ?? false) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VerifiePage()),
              );
            }
          },
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
