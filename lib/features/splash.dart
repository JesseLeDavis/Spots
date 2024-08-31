import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spots/constants/padding.dart';
import 'package:spots/constants/sizes.dart';
import 'package:spots/gen/assets.gen.dart';
import 'package:spots/routing/app_router.dart';
import 'package:spots/shared/themes/color_themes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
            Assets.icons.bits.image(width: 200),
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
          ],
        ),
      ),
    );
  }
}
