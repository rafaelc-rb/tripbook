import 'package:flutter/material.dart';

class SAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<TextSpan> title;

  const SAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.titleMedium,
          children: title,
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
    );
    ;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
