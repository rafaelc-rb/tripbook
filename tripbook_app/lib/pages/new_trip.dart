import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_navbar.dart';

class NewTripPage extends StatelessWidget {
  final String userName = 'Rafael';

  const NewTripPage({super.key});

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
        const TextSpan(text: ', pronto para planejar sua próxima viagem?'),
      ]),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
