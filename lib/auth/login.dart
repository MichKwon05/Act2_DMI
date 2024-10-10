import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iniciar sesión")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/bienvenidos.png', width: 150, height: 150),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Correo electrónico'),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/send_code');
              },
              child: const Text("Iniciar sesión"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/send_code');
              },
              child: const Text("¿Olvidaste tu contraseña?"),
            ),
          ],
        ),
      ),
    );
  }
}
