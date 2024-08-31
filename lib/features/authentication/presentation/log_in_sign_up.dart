import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spots/constants/padding.dart';
import 'package:spots/constants/sizes.dart';
import 'package:spots/gen/assets.gen.dart';
import 'package:spots/shared/themes/color_themes.dart';

class LogInSignUpScreen extends StatelessWidget {
  const LogInSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In or Sign Up'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 2,
                color: ColorThemes.darkGrey,
              ),
              Positioned(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeInOut,
                  height: 2,
                  width: (MediaQuery.of(context).size.width / 4) * 0,
                  color: ColorThemes.primary,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              gapH48,
              Assets.icons.logo.svg(),
              gapH32,
              Text(
                'Log in to park',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              gapH24,
              Text(
                'Log in or sign up and stop driving in circles looking for parking. Spots unlocks parking potential so you can count on finding a spot.',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: ColorThemes.secondaryText),
                textAlign: TextAlign.center,
              ),
              gapH24,
              MainHorizontalPadding(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: ColorThemes.pureWhite,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.g_mobiledata,
                                color: ColorThemes.primary),
                            RichText(
                              text: TextSpan(
                                  text: 'Continue with ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: ColorThemes.spotsBlack),
                                  children: [
                                    TextSpan(
                                      text: 'Google',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color: ColorThemes.spotsBlack,
                                              fontWeight: FontWeight.w700),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                    gapH8,
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: ColorThemes.pureWhite,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.facebook,
                              color: ColorThemes.primary,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Continue with ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: ColorThemes.spotsBlack),
                                  children: [
                                    TextSpan(
                                      text: 'Facebook',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color: ColorThemes.spotsBlack,
                                              fontWeight: FontWeight.w700),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                    gapH8,
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: ColorThemes.pureWhite,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.apple,
                                color: ColorThemes.spotsBlack),
                            RichText(
                              text: TextSpan(
                                  text: 'Continue with ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: ColorThemes.spotsBlack),
                                  children: [
                                    TextSpan(
                                      text: 'Apple',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color: ColorThemes.spotsBlack,
                                              fontWeight: FontWeight.w700),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                    gapH8,
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: ColorThemes.pureWhite,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.phone_android_outlined,
                                color: ColorThemes.spotsBlack),
                            RichText(
                              text: TextSpan(
                                  text: 'Continue with ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: ColorThemes.spotsBlack),
                                  children: [
                                    TextSpan(
                                      text: 'Phone',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color: ColorThemes.spotsBlack,
                                              fontWeight: FontWeight.w700),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
