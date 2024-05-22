import 'package:flutter/material.dart';

import 'dialog/adaptive_dialog_example.dart';
import 'list/list_or_gridview_example.dart';
import 'navigation/navigation_ui_example.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: Container(
          color: Colors.green,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const ListOrGridViewExample();
                        }),
                      );
                    },
                    child: const Text('Listview'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AdaptiveDialogExample();
                          });
                    },
                    child: const Text('Dialog'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const NavigationUiExample();
                        }),
                      );
                    },
                    child: const Text('Navigation UI'),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
