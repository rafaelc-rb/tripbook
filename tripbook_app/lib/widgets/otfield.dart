import 'package:flutter/material.dart';

class OTField extends StatefulWidget {
  final String hint;
  final double? width;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool password;
  final FormFieldValidator<String>? validator;

  const OTField({
    super.key,
    required this.hint,
    this.width,
    this.prefixIcon,
    this.suffixIcon,
    this.password = false,
    this.validator,
  });

  @override
  OTFieldState createState() => OTFieldState();
}

class OTFieldState extends State<OTField> {
  bool _visibility = false;

  @override
  void initState() {
    super.initState();
    _visibility = widget.password;
  }

  void _toggleVisibility() {
    setState(() {
      _visibility = !_visibility;
    });
  }

  Widget _passwordIcons() {
    return GestureDetector(
      onTap: _toggleVisibility,
      child: _visibility
          ? const Icon(Icons.visibility_off_outlined)
          : const Icon(Icons.visibility_outlined),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextFormField(
        obscureText: _visibility,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: widget.hint,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.password ? _passwordIcons() : widget.suffixIcon,
        ),
        validator: widget.validator,
      ),
    );
  }
}
