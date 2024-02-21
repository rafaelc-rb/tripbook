import 'package:flutter/material.dart';
import 'package:tripbook_app/widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  final String userName = 'Rafael';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.titleMedium,
            children: <TextSpan>[
              const TextSpan(text: 'Olá '),
              TextSpan(
                text: userName,
                style: TextStyle(color: Theme.of(context).colorScheme.primary)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                  text: ', seja bem-vindo. Vamos cuidar das suas viagens. 😊'),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 50.0,
            ),
            onPressed: () {
              // Adicione a ação do botão aqui
            },
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
