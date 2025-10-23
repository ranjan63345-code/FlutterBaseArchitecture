import 'package:architecture/config/app_colors.dart';
import 'package:architecture/core/router/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );

    _controller.forward();

    // Navigate to HomeScreen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.goNamed(RouteNames.homeScreen);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Center(
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Text(
            'Hi Dev!',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryDeepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
