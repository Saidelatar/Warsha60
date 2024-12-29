import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget prefixIcon;
  final String labelText;
  final Function(String)? onChanged;
  final bool obscureText;
  const CustomTextField(
      {super.key,
      required this.prefixIcon,
      required this.labelText,
      required this.onChanged,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 211, 207, 207),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          border: outlineInputBorder()),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 187, 184, 184).withValues(
            alpha: 0.20,
          ),
        ));
  }
}
