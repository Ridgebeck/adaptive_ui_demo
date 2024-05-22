import 'package:flutter/material.dart';

import '../breakpoints.dart';
import '../constants.dart';

/// adaptive widget to show a fullscreen dialog on smaller screens
/// or a floating dialog on larger screens
class AdaptiveDialogWidget extends StatelessWidget {
  const AdaptiveDialogWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width < Breakpoints.small
        ? Dialog.fullscreen(child: child)
        : Dialog(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: maxDialogWidth),
              child: child,
            ),
          );
  }
}
