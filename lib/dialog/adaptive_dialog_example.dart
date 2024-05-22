import 'package:flutter/material.dart';

import 'adaptive_dialog_widget.dart';

///
class AdaptiveDialogExample extends StatelessWidget {
  const AdaptiveDialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdaptiveDialogWidget(
      child: DialogContent(),
    );
  }
}

/// example content of an image with a text description for a dialog
class DialogContent extends StatelessWidget {
  const DialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://pbs.twimg.com/media/FJE-yDcXEAMsxeD?format=jpg&name=large',
                ),
              ),
            ),
            const ListTile(
              title: Text('Description'),
              subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id urna lobortis, suscipit tellus vel, rhoncus eros. Aliquam erat volutpat. Vivamus consectetur purus id nulla dignissim aliquam. Nam euismod leo lacus, eu eleifend risus consectetur id. Cras ornare consectetur ullamcorper. Etiam vitae arcu maximus, congue urna eu, interdum sapien. Nullam finibus interdum sollicitudin. Donec malesuada nulla et dui finibus mattis vel id diam. Donec aliquam congue turpis, ac iaculis dui aliquet eget. Aliquam neque orci, ultricies eu lacus vitae, malesuada mattis augue. Praesent sodales ac turpis nec accumsan. Mauris sed eros sit amet nibh ullamcorper viverra. Mauris iaculis libero id.'),
            )
          ],
        ),
      ),
    );
  }
}
