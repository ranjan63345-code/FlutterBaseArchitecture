import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final double? width;
  final double? height;
  final double? borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? const Color(0xFF673AB7), // Deep Purple
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',               // Local Poppins
            fontSize: fontSize ?? 16,            // Default font size 16
            fontWeight: FontWeight.w600,
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
