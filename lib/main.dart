// ignore_for_file: non_constant_identifier_names

import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int first_num, second_num;
  late String history = '', text_to_display = '', res = '', operation;

  void btnOnClick(String btnval) {
    if (btnval == 'C') {
      text_to_display = '';
      first_num = 0;
      second_num = 0;
      res = '';
    } else if (btnval == 'AC') {
      text_to_display = '';
      first_num = 0;
      second_num = 0;
      res = '';
      history = '';
    } else if (btnval == '+' ||
        btnval == '-' ||
        btnval == 'X' ||
        btnval == '/') {
      first_num = int.parse(text_to_display);
      res = '';
      operation = btnval;
    } else if (btnval == '=') {
      second_num = int.parse(text_to_display);
      if (operation == '+') {
        res = (first_num + second_num).toString();
        history =
            first_num.toString() + operation.toString() + second_num.toString();
      }
      if (operation == '-') {
        res = (first_num - second_num).toString();
        history =
            first_num.toString() + operation.toString() + second_num.toString();
      }
      if (operation == 'X') {
        res = (first_num * second_num).toString();
        history =
            first_num.toString() + operation.toString() + second_num.toString();
      }
      if (operation == '/') {
        res = (first_num / second_num).toString();
        history =
            first_num.toString() + operation.toString() + second_num.toString();
      }
    } else {
      res = int.parse(text_to_display + btnval).toString();
    }
    setState(() {
      text_to_display = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Calculator"),
        ),
        backgroundColor: const Color(0xFF28527A),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: const TextStyle(
                      color: Color(0x66FFFFFF),
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    text_to_display,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '<',
                    filledColor: 0xFFF4D160,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    filledColor: 0xFFF4D160,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                ],
              ),

              //Second Row

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '8',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '7',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: 'X',
                    filledColor: 0xFFF4D160,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                ],
              ),
              // Third Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '5',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '4',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '-',
                    filledColor: 0xFFF4D160,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                ],
              ),
              // Fourth Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '2',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '1',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '+',
                    filledColor: 0xFFF4D160,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                ],
              ),
              // Fifth Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 22,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '0',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '00',
                    filledColor: 0xFF8AC4D0,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '=',
                    filledColor: 0xFFF4D160,
                    textColor: 0xFF000000,
                    textSize: 20.0,
                    calback: btnOnClick,
                  ),
                ],
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
