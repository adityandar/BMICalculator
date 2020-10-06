import 'package:flutter/material.dart';
import 'constants.dart';

class BigRedButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  BigRedButton({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kButtonText,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        height: 60.0,
        width: double.infinity,
        color: kButtonColor,
      ),
    );
  }
}
