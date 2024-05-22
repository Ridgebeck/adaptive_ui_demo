import 'package:flutter/material.dart';

import 'list_or_grid_view_widget.dart';

/// calls the dynamic widget with some example content
class ListOrGridViewExample extends StatelessWidget {
  const ListOrGridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListOrGridViewWidget(children: listOfChildWidgets);
  }
}

/// list of child widgets that should be displayed
final listOfChildWidgets = [
  Container(
    color: Colors.red,
    height: 400,
  ),
  Container(
    color: Colors.yellow,
    height: 400,
  ),
  Container(
    color: Colors.green,
    height: 400,
  ),
  Container(
    color: Colors.purple,
    height: 400,
  ),
  Container(
    color: Colors.blueAccent,
    height: 400,
  ),
  Container(
    color: Colors.black45,
    height: 400,
  ),
  Container(
    color: Colors.orange,
    height: 400,
  ),
  Container(
    color: Colors.pink,
    height: 400,
  ),
  Container(
    color: Colors.teal,
    height: 400,
  ),
];
