import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_navbar.dart';

class MyTripsPage extends StatelessWidget {
  const MyTripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const userName = 'Rafael';

    return Scaffold(
      appBar: SAppBar(title: [
        const TextSpan(text: 'Olá '),
        TextSpan(
          text: userName,
          style: TextStyle(color: Theme.of(context).colorScheme.primary)
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: ', aqui estão todas as suas viagens. 😊'),
      ]),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
