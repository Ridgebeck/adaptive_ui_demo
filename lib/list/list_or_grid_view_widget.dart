import 'package:flutter/material.dart';

import '../breakpoints.dart';

/// shows how to switch between [ListView] and [GridView]
class ListOrGridViewWidget extends StatelessWidget {
  const ListOrGridViewWidget({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    // use MediaQuery.sizeOf(context).width to only update when size changes
    // compared to MediaQuery.of(context).size.width, which updates way more often
    return MediaQuery.sizeOf(context).width < Breakpoints.small
        // use a ListView to display children when on a small screen
        ? ListView(
            children: children,
          )
        :
        // use a GridView to display children when on a larger screen
        Center(
            // constrain the size to a maximum width
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: Breakpoints.medium),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                ),
                children: children,
              ),
            ),
          );
  }
}
