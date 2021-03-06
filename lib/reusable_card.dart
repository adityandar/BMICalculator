import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colors;
  final Widget child;
  final Function onPress;

  ReusableCard({@required this.colors, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
