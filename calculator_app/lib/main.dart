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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.cyan),
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
                      '45x6',
                      style: TextStyle(color: Colors.grey, fontSize: 26),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '456',
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
                    ),
                    CalculatorButton(
                        text: "C",
                        fillcolor: 0xFF000000,
                        bttncolor: 0xFFBDBDBD),
                    CalculatorButton(
                        text: "<",
                        fillcolor: 0xFF000000,
                        bttncolor: 0xFFBDBDBD),
                    CalculatorButton(
                        text: "/",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFFFF9100),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "9",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                    ),
                    CalculatorButton(
                        text: "8",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFF757575),
                    CalculatorButton(
                        text: "7",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFF757575),
                    CalculatorButton(
                        text: "X",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFFFF9100),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "6",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                    ),
                    CalculatorButton(
                        text: "5",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFF757575),
                    CalculatorButton(
                        text: "4",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFF757575),
                    CalculatorButton(
                        text: "-",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFFFF9100),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "3",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                    ),
                    CalculatorButton(
                        text: "2",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFF757575),
                    CalculatorButton(
                        text: "1",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFF757575),
                    CalculatorButton(
                        text: "+",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFFFF9100),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: "%",
                      fillcolor: 0xFFFFFFFF,
                      bttncolor: 0xFF757575,
                    ),
                    CalculatorButton(
                        text: "0",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFF757575),
                    CalculatorButton(
                        text: "00",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFF757575),
                    CalculatorButton(
                        text: "=",
                        fillcolor: 0xFFFFFFFF,
                        bttncolor: 0xFFFF9100),
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
