import 'package:flutter/widgets.dart';

class MainHorizontalPadding extends StatelessWidget {
  const MainHorizontalPadding({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: child,
    );
  }
}
