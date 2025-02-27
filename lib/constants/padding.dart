import 'package:flutter/widgets.dart';

class MainAllPadding extends StatelessWidget {
  const MainAllPadding({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: children),
    );
  }
}
