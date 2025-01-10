import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamapp/Features/auth/Presentation/pages/log_in_page.dart';
import 'package:teamapp/Features/auth/Presentation/pages/verifie_page.dart';
import 'Features/auth/Presentation/pages/sign_in_page.dart';
import 'Features/auth/Presentation/state_mangment/bloc/auth_bloc.dart';
import 'ingectchin.dart' as di;

//making the ui
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
              child: const SignInPage(),
            ),
        '/second': (context) => BlocProvider(
              create: (context) => di.sl<AuthBloc>(),
              child: const LogInPage(),
            ),
        '/third': (context) => BlocProvider(
              create: (context) => di.sl<AuthBloc>(),
              child: VerifiePage(),
            ),

        // '/home': (context) => HomeScreen(),
      },
    );
  }
}
