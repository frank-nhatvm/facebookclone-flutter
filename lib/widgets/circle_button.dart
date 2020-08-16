import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final IconData iconData;
  final double iconSize;
  final Function onPressed;

  const CircleButton(
      {Key key, @required this.iconData, @required this.iconSize, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle
      ),
      child: IconButton(
        icon: Icon(iconData),
        iconSize: iconSize,
        color: Colors.black,
        onPressed: onPressed,
      ),
    )
    ;
  }
}
