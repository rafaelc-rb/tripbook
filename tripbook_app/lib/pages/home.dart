import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  final String userName = 'Rafael';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(title: [
        const TextSpan(text: 'Olá '),
        TextSpan(
          text: userName,
          style: TextStyle(color: Theme.of(context).colorScheme.primary)
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const TextSpan(
            text: ', seja bem-vindo. Vamos cuidar das suas viagens. 😊'),
      ]),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
