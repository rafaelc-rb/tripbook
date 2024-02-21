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
        const TextSpan(text: 'E aí '),
        TextSpan(
          text: userName,
          style: TextStyle(color: Theme.of(context).colorScheme.primary)
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: ', blz? Vamos planejar e guardar suas viagens.'),
      ]),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
