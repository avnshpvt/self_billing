import 'package:flutter/material.dart';


class ArrowButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Trolly Controlling ')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ArrowButton(
                  direction: ArrowDirection.up,
                  onPressed: () {
                    // Handle up arrow button press
                    print('Up button pressed');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ArrowButton(
                  direction: ArrowDirection.left,
                  onPressed: () {
                    // Handle left arrow button press
                    print('Left button pressed');
                  },
                ),
                SizedBox(width: 20),
                ArrowButton(
                  direction: ArrowDirection.right,
                  onPressed: () {
                    // Handle right arrow button press
                    print('Right button pressed');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ArrowButton(
                  direction: ArrowDirection.down,
                  onPressed: () {
                    // Handle down arrow button press
                    print('Down button pressed');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum ArrowDirection { up, down, left, right }

class ArrowButton extends StatelessWidget {
  final ArrowDirection direction;
  final VoidCallback onPressed;

  ArrowButton({required this.direction, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    switch (direction) {
      case ArrowDirection.up:
        iconData = Icons.keyboard_arrow_up;
        break;
      case ArrowDirection.down:
        iconData = Icons.keyboard_arrow_down;
        break;
      case ArrowDirection.left:
        iconData = Icons.keyboard_arrow_left;
        break;
      case ArrowDirection.right:
        iconData = Icons.keyboard_arrow_right;
        break;
    }

    return IconButton(
      icon: Icon(iconData),
      iconSize: 60,
      onPressed: onPressed,
    );
  }
}
