import 'package:flutter/material.dart';

class ValidateCodeScreen extends StatelessWidget {
  const ValidateCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Validar código")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/contrasena.png', width: 150, height: 150),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Código de verificación'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/change_password'); // Redirige a cambio de contraseña
              },
              child: const Text("Validar código"),
            ),
          ],
        ),
      ),
    );
  }
}
