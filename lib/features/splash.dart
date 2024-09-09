import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spots/constants/padding.dart';
import 'package:spots/constants/sizes.dart';
import 'package:spots/gen/assets.gen.dart';
import 'package:spots/routing/app_router.dart';
import 'package:spots/shared/themes/color_themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ColorThemes.pureWhite,
        title: const Text('Mission Command'),
      ),
      body: MainHorizontalPadding(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _animation.value),
                  child: child,
                );
              },
              child: Assets.icons.bits.image(width: 200),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text('Home'),
              ),
            ),
            gapH16,
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  context.pushNamed(AppRoute.logInSignUp.name);
                },
                child: const Text('Log in or Sign up'),
              ),
            ),
            gapH16,
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text('Profile'),
              ),
            ),
            gapH16,
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  context.pushNamed(AppRoute.map.name);
                },
                child: const Text('Map'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
