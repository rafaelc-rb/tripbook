import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const userName = 'Rafael';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
          child: Column(
        children: [
          const Icon(
            Icons.account_circle,
            size: 150.0,
          ),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headlineLarge,
              children: <TextSpan>[
                const TextSpan(text: 'E aí, '),
                TextSpan(
                  text: userName,
                  style: TextStyle(color: Theme.of(context).colorScheme.primary)
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: ', blz? '),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            'Este é o seu perfil de usuário do TripBook.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            'O que você está precisando?',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      )),
    );
  }
}
