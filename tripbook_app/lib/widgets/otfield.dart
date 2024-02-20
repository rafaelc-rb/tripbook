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
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          hintText: widget.hint,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: widget.prefixIcon,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: widget.password ? _passwordIcons() : widget.suffixIcon,
          ),
        ),
        validator: widget.validator,
      ),
    );
  }
}
