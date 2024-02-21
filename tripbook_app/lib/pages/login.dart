import 'package:flutter/material.dart';
import 'package:tripbook_app/widgets/button.dart';
import 'package:tripbook_app/widgets/otfield.dart';

import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final GlobalKey<FormState> _recoveryKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 70.0),
          child: SizedBox(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  SizedBox(
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildLogo(context),
                        _buildFormFields(),
                        _buildLoginButton(),
                      ],
                    ),
                  ),
                  _buildRegisterButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Trip',
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
        Text('Book',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold))
      ],
    );
  }

  Widget _buildFormFields() {
    return Column(
      children: [
        OTField(
          hint: 'E-mail',
          prefixIcon: const Icon(Icons.person_2_outlined),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Falta o seu e-mail aqui. 😬';
            }
            // Regex for email validation
            Pattern pattern =
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
            RegExp regex = RegExp(pattern as String);
            if (!regex.hasMatch(value)) {
              return 'Este não é um formato de e-mail. 🫤';
            } else {
              return null;
            }
          },
        ),
        const SizedBox(
          height: 15,
        ),
        OTField(
          password: true,
          prefixIcon: const Icon(Icons.key_outlined),
          hint: 'Senha',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Falta a sua senha aqui. 😬';
            } else if (value.length < 8) {
              return 'A senha é de no mínimo 8 caracteres. 🫤';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return Column(
      children: [
        Button(
          label: 'Entrar',
          fullWidth: true,
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // Process data.
              print('Validação bem-sucedida');
            } else {
              print('Falha na validação');
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: _buildForgotPassword(context),
        )
      ],
    );
  }

  Widget _buildForgotPassword(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 330,
                color: Theme.of(context).colorScheme.background,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Vamos recuperar seu acesso.',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      Expanded(
                        child: Form(
                            key: _recoveryKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                    'Enviaremos um e-mail para você criar uma nova senha de acesso.',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                OTField(
                                  hint: 'E-mail',
                                  prefixIcon:
                                      const Icon(Icons.person_2_outlined),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Falta o seu e-mail aqui. 😬';
                                    }
                                    // Regex for email validation
                                    Pattern pattern =
                                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                    RegExp regex = RegExp(pattern as String);
                                    if (!regex.hasMatch(value)) {
                                      return 'Este não é um formato de e-mail. 🫤';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                Button(
                                  label: 'Enviar e-mail de recuperação',
                                  onPressed: () {
                                    if (_recoveryKey.currentState!.validate()) {
                                      print('E-mail enviado!');
                                      Navigator.pop(context);
                                    } else {
                                      print('Formato incorreto!');
                                    }
                                  },
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Text(
          'Esqueceu a senha? 🤔',
          style: Theme.of(context).textTheme.titleSmall,
        ));
  }

  Widget _buildRegisterButton(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/register');
        },
        child: Text(
          'Primeira vez aqui? ✋',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ));
  }
}
