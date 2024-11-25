import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamapp/Features/auth/Presentation/state_mangment/bloc/auth_event.dart';
import 'package:teamapp/Features/auth/Presentation/state_mangment/bloc/auth_state.dart';

import '../state_mangment/bloc/auth_bloc.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    // Create TextEditingControllers for managing input from TextFields
    final TextEditingController controller1 = TextEditingController();
    final TextEditingController controller2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("dad"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the column
        child: Column(
          children: [
            TextField(
              controller: controller1, // Assign the first controller
              decoration: InputDecoration(
                labelText: 'First TextField', // Label for the first TextField
                border: OutlineInputBorder(), // Add a border to the TextField
              ),
            ),
            SizedBox(height: 16), // Add space between the TextFields
            TextField(
              controller: controller2, // Assign the second controller
              decoration: InputDecoration(
                labelText: 'Second TextField', // Label for the second TextField
                border: OutlineInputBorder(), // Add a border to the TextField
              ),
            ),
            SizedBox(height: 16), // Add space before the button
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(
                  SignInWithGoogleEvent(
                      // name: "taqi",
                      // email: "ali@gmail.com",
                      // password: "123456",
                      ),
                );
              },
              child: Text('Submit'), // Button text
            ),
            Container(
              height: 200,
              width: 200,
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is LoadingState) {
                    return CircularProgressIndicator();
                  } else if (state is SuccessState) {
                    return Text("u pass");
                  } else if (state is FailureState) {
                    return Text(state.message);
                  } else {
                    return Text("some thing is wroing");
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
