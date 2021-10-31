import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int bttncolor;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.fillcolor,
    required this.bttncolor,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callback(text);
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        height: 80,
        width: 80,
        // color: Colors.blueAccent,
        decoration: BoxDecoration(
          color: Color(bttncolor),
          borderRadius: BorderRadius.circular(80),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Color(fillcolor),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
