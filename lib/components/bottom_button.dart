import 'package:flutter/material.dart';
import '../constants.dart';

class BottomCustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  BottomCustomButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kBigTextStyle.copyWith(
              fontSize: 25.0,
            ),
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: Colors.pink,
        width: double.infinity,
        height: kContainerHeight,
      ),
    );
  }
}
