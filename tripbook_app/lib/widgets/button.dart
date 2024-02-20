import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final double? width;
  final VoidCallback onPressed; // Altere o tipo para VoidCallback

  const Button({
    super.key,
    required this.label,
    this.width,
    required this.onPressed, // Altere o nome para onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed, // Use o parâmetro onPressed aqui
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.secondary),
        ),
        child: Text(label,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold) ??
                const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
