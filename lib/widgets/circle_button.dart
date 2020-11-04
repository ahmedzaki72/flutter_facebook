import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icons;
  final double iconSize;
  final Function onPress;

  CircleButton({
    @required this.icons,
    @required this.iconSize,
    @required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
        icon: Icon(icons),
        iconSize: iconSize,
        onPressed: onPress,
        color: Colors.black,
      ),
    );
  }
}
