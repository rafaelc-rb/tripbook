import 'package:flutter/material.dart';
import 'package:tripbook_app/widgets/button.dart';
import 'package:tripbook_app/widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Adicione as margens aqui
        child: Container(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centraliza no eixo horizontal
                children: [
                  Text('Trip',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  Text('Book',
                      style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold) ??
                          TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold))
                ],
              ),
              const Column(
                children: [
                  OTField(
                    hint: 'E-mail',
                    prefixIcon: Icon(Icons.person_2_outlined),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  OTField(
                    password: true,
                    prefixIcon: Icon(Icons.key_outlined),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    hint: 'Senha',
                  ),
                ],
              ),
              const Button(
                label: 'Entrar',
              )
            ],
          ),
        ),
      ),
    ));
  }
}
