import 'package:flutter/material.dart';

import '../breakpoints.dart';
import 'bottom_nav_bar.dart';
import 'side_nav_rail.dart';

/// builds navigation UI based on available width of screen
class AdaptiveNavigationWidget extends StatefulWidget {
  const AdaptiveNavigationWidget({super.key, required this.child});

  final Widget child;

  @override
  State<AdaptiveNavigationWidget> createState() => _AdaptiveNavigationWidgetState();
}

class _AdaptiveNavigationWidgetState extends State<AdaptiveNavigationWidget> {
  // define background color for navigation elements
  late final _colorScheme = Theme.of(context).colorScheme;
  late final _backgroundColor = Color.alphaBlend(
    _colorScheme.primary.withOpacity(0.14),
    _colorScheme.surface,
  );

  bool controllerInitialized = false;
  int _selectedIndex = 0;

  void _changeIndex(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final useBottomNavBar = MediaQuery.sizeOf(context).width < Breakpoints.small;
    return Scaffold(
      body: Row(
        children: [
          if (!useBottomNavBar)
            SideNavRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: _changeIndex,
              backgroundColor: _backgroundColor,
            ),
          Expanded(
            child: Container(color: Colors.green),
          ),
        ],
      ),
      floatingActionButton: useBottomNavBar
          ? FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: useBottomNavBar
          ? BottomNavBar(
              selectedIndex: _selectedIndex,
              onDestinationSelected: _changeIndex,
            )
          : null,
    );
  }
}
