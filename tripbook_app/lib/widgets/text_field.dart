import 'package:flutter/material.dart';

class OTField extends StatelessWidget {
  final String hint;
  final double? width;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool? password;
  const OTField(
      {super.key,
      required this.hint,
      this.width,
      this.prefixIcon,
      this.suffixIcon,
      this.password});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        obscureText: password ?? false,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
