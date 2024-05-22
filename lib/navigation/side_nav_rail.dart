import 'package:flutter/material.dart';

import 'destinations.dart';

class SideNavRail extends StatelessWidget {
  const SideNavRail({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
    required this.backgroundColor,
  });

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      leading: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      ),
      groupAlignment: -0.85,
      destinations: destinations.map((dest) {
        return NavigationRailDestination(
          icon: Icon(dest.icon),
          label: Text(dest.label),
        );
      }).toList(),
    );
  }
}
