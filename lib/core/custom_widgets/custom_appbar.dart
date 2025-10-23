import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? titleColor;
  final double? elevation;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = false,
    this.actions,
    this.backgroundColor,
    this.titleColor,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor ?? const Color(0xFF673AB7), // Deep Purple
      elevation: elevation ?? 4,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () => Navigator.of(context).pop(),
              color: titleColor ?? Colors.white,
            )
          : null,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',                // Local Poppins
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: titleColor ?? Colors.white,
        ),
      ),
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
