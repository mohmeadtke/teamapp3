import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/auth/Presentation/pages/page1.dart';
import 'Features/auth/Presentation/state_mangment/bloc/auth_bloc.dart';
import 'ingectchin.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const Topwidgt(),
      routes: {
        '/': (context) => BlocProvider(
              create: (context) => di.sl<AuthBloc>(),
              child: const Page1(),
            ),
        // '/home': (context) => HomeScreen(),
      },
    );
  }
}

// class AuthScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController nameController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Authentication')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: BlocConsumer<AuthBloc, AuthState>(
//           listener: (context, state) {
//             if (state is SuccessState) {
//               Navigator.pushReplacementNamed(context, '/home');
//             } else if (state is FailureState) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(state.message)),
//               );
//             }
//           },
//           builder: (context, state) {
//             if (state is LoadingState) {
//               return Center(child: CircularProgressIndicator());
//             }

//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(
//                   controller: nameController,
//                   decoration: InputDecoration(labelText: 'Name'),
//                 ),
//                 TextField(
//                   controller: emailController,
//                   decoration: InputDecoration(labelText: 'Email'),
//                 ),
//                 TextField(
//                   controller: passwordController,
//                   decoration: InputDecoration(labelText: 'Password'),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     BlocProvider.of<AuthBloc>(context).add(
//                       AuthEvent.createAccountEvent(
//                         name: nameController.text,
//                         email: emailController.text,
//                         password: passwordController.text,
//                       ),
//                     );
//                   },
//                   child: Text('Create Account'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     BlocProvider.of<AuthBloc>(context).add(
//                       AuthEvent.signInEvent(
//                         email: emailController.text,
//                         password: passwordController.text,
//                       ),
//                     );
//                   },
//                   child: Text('Sign In'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     BlocProvider.of<AuthBloc>(context).add(
//                       AuthEvent.signInWithGoogleEvent(),
//                     );
//                   },
//                   child: Text('Sign In with Google'),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home')),
//       body: Center(child: Text('Welcome to the Home Screen!')),
//     );
//   }
// }
