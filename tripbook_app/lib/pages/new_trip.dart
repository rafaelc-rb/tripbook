import 'package:flutter/material.dart';
import 'package:tripbook_app/widgets/bottom_navbar.dart';

class NewTripPage extends StatelessWidget {
  final String userName = 'Rafael';

  const NewTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.titleMedium,
            children: <TextSpan>[
              TextSpan(
                text: userName,
                style: TextStyle(color: Theme.of(context).colorScheme.primary)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const TextSpan(text: ' vamos planejar a sua próxima viagem. 😊'),
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
