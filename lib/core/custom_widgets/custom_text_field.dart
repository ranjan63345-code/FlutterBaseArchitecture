import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final double? fontSize;
  final Color? textColor;
  final Color? hintColor;
  final EdgeInsetsGeometry? contentPadding;
  final BorderRadius? borderRadius;

  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
    this.fontSize,
    this.textColor,
    this.hintColor,
    this.contentPadding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      style: TextStyle(
        fontFamily: 'Poppins',                // Local Poppins
        fontSize: fontSize ?? 14,             // Default font size 14
        color: textColor ?? Colors.black,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: fontSize ?? 14,
          color: hintColor ?? Colors.grey,
        ),
        contentPadding:
            contentPadding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF673AB7)), // Deep Purple
        ),
      ),
    );
  }
}
