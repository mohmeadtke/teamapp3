import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamapp/Features/auth/Presentation/pages/verifie_page.dart';
import '../state_mangment/bloc/auth_bloc.dart';
import '../state_mangment/bloc/auth_state.dart';
import 'form.dart';

class BlocForm extends StatelessWidget {
  const BlocForm({super.key, required this.buttonText, required this.x});
  final String buttonText;
  final int x;
  //Happe New Year
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ));
        } else if (state is SuccessState) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VerifiePage()),
          );
          return const Text(
            "",
            style: TextStyle(color: Colors.white, fontSize: 30),
          );
        } else if (state is FailureState) {
          return Formm(
            buttonText: buttonText,
            x: x,
            snackBarMassge: state.message,
          );
        } else {
          return Formm(
            buttonText: buttonText,
            x: x,
            snackBarMassge: 'Something wrong try again',
          );
        }
      },
    );
  }
}
