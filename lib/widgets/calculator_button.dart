import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
    required this.text,
    required this.filledColor,
    required this.textColor,
    required this.textSize,
    required this.calback,
  }) : super(key: key);

  final String text;
  final int filledColor;
  final int textColor;
  final double textSize;
  final Function calback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          onPressed: () => calback(text),
          child: Text(
            text,
            style: TextStyle(fontSize: textSize),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Color(filledColor),
          textColor: Color(textColor),
        ),
      ),
    );
  }
}

//Color(0xFF8AC4D0)

