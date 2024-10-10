import 'package:flutter/material.dart';

import 'auth/login.dart';
import 'navigation/change_password.dart';
import 'navigation/send_code.dart';
import 'navigation/verification_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=> const Login(),
        '/send_code': (context) => const SendCodeScreen(),  // Pantalla de envío de código
        '/validate_code': (context) => const ValidateCodeScreen(), // Pantalla de validación de código
        '/change_password': (context) => const ChangePasswordScreen(),
        '/login':(context)=> const Login(),
      },
    );
  }
}