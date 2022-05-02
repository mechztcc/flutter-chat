import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-mail'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Entrar'),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Criar nova conta'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
