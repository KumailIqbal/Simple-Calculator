import 'package:calculator_app/widgets/calc_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstnum = 0;
  int secondnum = 0;
  String res = '';
  String history = '';
  String operation = '';
  String text_to_display = '';
  void btnOnClick(String text) {
    print(text);
    if (text == 'C') {
      firstnum = 0;
      secondnum = 0;
      text_to_display = '';
      res = '';
    } else if (text == 'AC') {
      firstnum = 0;
      secondnum = 0;
      text_to_display = '';
      res = '';
      history = '';
    } else if (text == '<') {
      res = text_to_display.substring(0, text_to_display.length - 1);
    } else if (text == '+' ||
        text == '-' ||
        text == 'X' ||
        text == '/' ||
        text == '%') {
      firstnum = int.parse(text_to_display);
      res = '';
      operation = text;
    } else if (text == '=') {
      secondnum = int.parse(text_to_display);
      if (operation == '+') {
        res = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        res = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'X') {
        res = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        res = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '%') {
        res = (firstnum % secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      res = (text_to_display + text).toString();
    }
    setState(() {
      text_to_display = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Flutter Calculator")),
        ),
        backgroundColor: Colors.black,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      history,
                      style: TextStyle(color: Colors.grey, fontSize: 26),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      text_to_display,
                      style: TextStyle(color: Colors.white, fontSize: 46),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "AC",
                      fillcolor: 0xFF000000,
                      bttncolor: 0xFFBDBDBD,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "C",
                      fillcolor: 0xFF000000,
                      bttncolor: 0xFFBDBDBD,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "<",
                      fillcolor: 0xFF000000,
                      bttncolor: 0xFFBDBDBD,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "/",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFFFF9100,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "9",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "8",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "7",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "X",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFFFF9100,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "6",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "5",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "4",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "-",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFFFF9100,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "3",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "2",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "1",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "+",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFFFF9100,
                      callback: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "%",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "0",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "00",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                      callback: btnOnClick,
                    ),
                    CalculatorButton(
                      text: "=",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFFFF9100,
                      callback: btnOnClick,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
