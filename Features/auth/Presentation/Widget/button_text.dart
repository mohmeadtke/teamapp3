import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamapp/Features/auth/Presentation/state_mangment/bloc/auth_event.dart';
import '../state_mangment/bloc/auth_bloc.dart';
import 'vildate_form.dart';

class Button extends StatelessWidget {
  Button(
      {super.key,
      required this.buttonText,
      required this.formKey,
      required this.name,
      required this.email,
      required this.passWord,
      required this.snackBarMassge});
  final String buttonText;
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController passWord;
  // final Function submitForm;
  final Vildateform vildateform = Vildateform();
  final dynamic formKey;
  final String snackBarMassge;
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
          onPressed: () async {
            await onPrssedFun(context);
          },
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future<void> onPrssedFun(BuildContext context) async {
    // if (formKey.currentState?.validate() ?? false) {
    //   if (buttonText == 'sign-in') {
    //     BlocProvider.of<AuthBloc>(context)
    //         .add(SignInEvent(email: email.text, password: passWord.text));
    //   }
    //   if (buttonText == 'log-in') {
    // BlocProvider.of<AuthBloc>(context).add(CreateAccountEvent(
    //     email: "mohmmead49@gmail.com", password: "123456", name: "taqi"));

    BlocProvider.of<AuthBloc>(context).add(SignInWithGoogleEvent());

    //   }
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text(snackBarMassge),
    //       duration:
    //           const Duration(seconds: 10), // Optional: duration for SnackBar
    //       action: SnackBarAction(
    //         label: 'Undo',
    //         onPressed: () {
    //           print(snackBarMassge);
    //         },
    //       ),
    //     ),
    //   );
    //   print(snackBarMassge + "scond print");
    // }
  }
}
