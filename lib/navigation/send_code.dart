import 'package:flutter/material.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enviar código")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/correo.png', width: 150, height: 150),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Correo electrónico'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/validate_code'); // Redirige a validación de código
              },
              child: const Text("Enviar código"),
            ),
          ],
        ),
      ),
    );
  }
}
