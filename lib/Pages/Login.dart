import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final String _title;
  const Login({Key? key, required String title})
      : _title = title,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://coecadiz.com/wp-content/uploads/2018/06/fondo-login-web.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: body()),
    );
  }

  Widget body() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_title.toString(),
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              )),
          const SizedBox(
            height: 20.0,
          ),
          TxtUsuario(),
          const SizedBox(
            height: 20.0,
          ),
          TxtPassword(),
          const SizedBox(
            height: 20.0,
          ),
          BtnIniciar(),
        ],
      ),
    );
  }

  Widget TxtUsuario() {
    return TextFormField(
      decoration: InputDecoration(
        icon: const Icon(
          Icons.person,
          color: Colors.white,
        ),
        labelStyle: const TextStyle(
            color: Colors.deepPurple, fontWeight: FontWeight.bold),
        labelText: 'Usuario',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }

  Widget TxtPassword() {
    return TextFormField(
      decoration: InputDecoration(
        icon: const Icon(
          Icons.lock,
          color: Colors.white,
        ),
        labelStyle: const TextStyle(
            color: Colors.deepPurple, fontWeight: FontWeight.bold),
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }

  Widget BtnIniciar() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Iniciar Sesion'),
    );
  }
}
