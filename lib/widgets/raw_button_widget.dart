import 'package:flutter/material.dart';
import 'package:flutter_task_ui/responsive.dart';

import '../responsive1.dart';
import 'button_widgets.dart';

class RawButtonWidget extends StatefulWidget {
  const RawButtonWidget({super.key});

  @override
  State<RawButtonWidget> createState() => _RawButtonWidgetState();
}

class _RawButtonWidgetState extends State<RawButtonWidget> {
  bool isFollow = false;

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    final isTablet = Responsive1.isTablet(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final buttonWith = isLandscape ? constraints.maxWidth * 0.4
            : constraints.maxWidth * 0.38;
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isFollow ?
            ButtonWidgets(
              color: Color.fromARGB(255, 43, 57, 255),
              borderColor: Color.fromARGB(255, 43, 57, 255),
              icon: Icons.add,
              btnName: 'Following',
              onPressed: () {
                setState(() {
                  isFollow = false;
                });
              },
            )
                :
            ButtonWidgets(
              color: Color.fromARGB(255, 43, 57, 255),
              borderColor:  Color.fromARGB(255, 43, 57, 255),
              icon: Icons.add,
              btnName: "Follow",
              onPressed: () {
                setState(() {
                  isFollow = true;
                });
              },
            ),
            SizedBox(width: 0.013 * getHeight(context),),
            ButtonWidgets(
                color: Color.fromARGB(255, 43, 57, 255),
                borderColor: Color.fromARGB(255, 43, 57, 255),
                icon: Icons.messenger_outline,
                btnName: "Message"
            ),
          ],
        );
      },
    );
  }
}
