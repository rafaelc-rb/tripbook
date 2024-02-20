import 'package:flutter/material.dart';
import 'package:tripbook_app/widgets/button.dart';
import 'package:tripbook_app/widgets/otfield.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 300,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildLogo(context),
                  _buildFormFields(),
                  _buildLoginButton(),
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
            return null;
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
    return Button(
      label: 'Entrar',
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Process data.
        }
      },
    );
  }
}
