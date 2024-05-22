import 'package:flutter/material.dart';

import 'adaptive_navigation_widget.dart';

/// calls the AdaptiveNavigationWidget with some example content
class NavigationUiExample extends StatelessWidget {
  const NavigationUiExample({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationWidget(
      child: Container(
        color: Colors.green,
      ),
    );
  }
}
