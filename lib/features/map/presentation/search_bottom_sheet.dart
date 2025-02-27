import 'package:flutter/material.dart';
import 'package:spots/constants/padding.dart';
import 'package:spots/constants/sizes.dart';
import 'package:spots/constants/ui_widgets.dart';
import 'package:spots/shared/themes/color_themes.dart';

class SearchBottomSheet extends StatelessWidget {
  const SearchBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.2,
      minChildSize: 0.2,
      maxChildSize: .95,
      builder: (context, scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Container(
              decoration: const BoxDecoration(
                color: ColorThemes.spotsBlack,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    const DragIcon(),
                    MainAllPadding(children: [
                      TextFormField(),
                    ]),
                    const Divider(
                      thickness: 1,
                      height: 0,
                      color: ColorThemes.darkGrey,
                    ),
                    const MainAllPadding(children: [
                      gapH16,
                      TextField(),
                      gapH150,
                    ]),
                  ],
                ),
              )),
        );
      },
    );
  }
}
