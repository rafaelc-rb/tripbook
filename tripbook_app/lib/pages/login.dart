import 'package:flutter/material.dart';
import 'package:tripbook_app/widgets/button.dart';
import 'package:tripbook_app/widgets/otfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    fontWeight: FontWeight.bold) ??
                TextStyle(
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
              return 'Please enter your email';
            }
            // Regex for email validation
            Pattern pattern =
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
            RegExp regex = RegExp(pattern as String);
            if (!regex.hasMatch(value)) {
              return 'Enter a valid email address';
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
              return 'Please enter your password';
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
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('BottomSheet de recuperação de senha'),
                      ElevatedButton(
                        child: const Text('Fechar BottomSheet'),
                        onPressed: () => Navigator.pop(context),
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
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('BottomSheet de cadastro'),
                      ElevatedButton(
                        child: const Text('Fechar BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              );
            },
          );
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
