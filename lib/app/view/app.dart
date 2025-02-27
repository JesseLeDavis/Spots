import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spots/routing/app_router.dart';
import 'package:spots/shared/themes/color_themes.dart';
import 'package:spots/shared/themes/text_themes.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const _App();
  }
}

class _App extends ConsumerWidget {
  const _App();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorThemes.spotsBlack,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextThemes.pureWhite.headline,
          elevation: 0,
          backgroundColor: ColorThemes.spotsBlack,
        ),
        fontFamily: GoogleFonts.inter().fontFamily,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: ColorThemes.pureWhite,
            backgroundColor: Colors.deepOrangeAccent,
            padding: const EdgeInsets.symmetric(vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: TextThemes.pureWhite.headline,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: ColorThemes.darkGrey,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          hintStyle: TextThemes.secondaryText.body,
          labelStyle: TextThemes.secondaryText.body,
          errorStyle:
              TextThemes.error.footnote.copyWith(color: ColorThemes.alert),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorThemes.lightGrey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        textTheme: TextTheme(
          displayLarge: TextThemes.pureWhite.largeTitle,
          headlineLarge: TextThemes.pureWhite.title1,
          headlineMedium: TextThemes.pureWhite.title2,
          headlineSmall: TextThemes.pureWhite.headline,
          titleMedium: TextThemes.pureWhite.body,
          bodyLarge: TextThemes.pureWhite.body,
          labelMedium: TextThemes.pureWhite.footnote,
        ),
      ),
      title: 'Spots',
      key: const Key(''),
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter(),
    );
  }
}

extension ThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}
