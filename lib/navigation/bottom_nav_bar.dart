import 'package:flutter/material.dart';

import 'destinations.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 0,
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: destinations.map((dest) {
        return NavigationDestination(
          icon: Icon(dest.icon),
          label: dest.label,
        );
      }).toList(),
    );
  }
}
