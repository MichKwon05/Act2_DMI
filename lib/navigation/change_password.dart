import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cambiar contraseña")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/cambiar.png', width: 150, height: 150),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            TextField(
              controller: confirmPasswordController,
              decoration: const InputDecoration(labelText: 'Repetir contraseña'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (passwordController.text == confirmPasswordController.text) {
                  // Contraseñas coinciden
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Contraseña cambiada correctamente'),
                  ));
                } else {
                  // Contraseñas no coinciden
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Las contraseñas no coinciden'),
                  ));
                }
              },
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}
