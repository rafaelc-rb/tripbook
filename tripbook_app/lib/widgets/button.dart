import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final double? width;
  final bool fullWidth;
  final VoidCallback onPressed; // Altere o tipo para VoidCallback

  const Button({
    super.key,
    required this.label,
    this.width,
    this.fullWidth = false,
    required this.onPressed, // Altere o nome para onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : width,
      child: ElevatedButton(
        onPressed: onPressed, // Use o parâmetro onPressed aqui
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
          foregroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.onPrimary),
          overlayColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.secondary),
        ),
        child: Text(label,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold) ??
                TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold)),
      ),
    );
  }
}
