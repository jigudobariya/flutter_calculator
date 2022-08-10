import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/calculator_button.dart';
import 'widgets/operation_button.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum = 0;
  late int secondNum = 0;
  late String history = '';
  late String textToDisplay = '';
  late String res = '';
  late String operation = '';

  void btnOnClick(String btnval) {
    // print(btnval);
    if (btnval == 'C') {
      textToDisplay = ' ';
      firstNum = 0;
      secondNum = 0;
      res = ' ';
    } else if (btnval == 'AC') {
      textToDisplay = ' ';
      firstNum = 0;
      secondNum = 0;
      res = ' ';
      history = '';
    } else if (btnval == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnval == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnval == '+' ||
        btnval == '-' ||
        btnval == 'x' ||
        btnval == '/') {
      firstNum = int.parse(textToDisplay);
      res = ' ';
      operation = btnval;
    } else if (btnval == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      } else if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      } else if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      } else if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnval).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "Calculator",
        //   ),
        // ),
        backgroundColor: Color(0xFF07223B),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      history,
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                        fontSize: 25,
                        color: Color(0x66ffffff),
                      )),
                    ),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      textToDisplay,
                      style: GoogleFonts.rubik(
                          textStyle:
                              TextStyle(fontSize: 48, color: Colors.white)),
                    ),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: 'AC',
                      fillColor: 0xFFFF2C31,
                      textColor: 0xffffffff,
                      textSize: 20,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: 'C',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 20,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: '<',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    OperationButton(
                      text: '/',
                      fillColor: 0xff2968C7,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: '9',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: '8',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: '7',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    OperationButton(
                      text: 'x',
                      fillColor: 0xff2968C7,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: '6',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: '5',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: '4',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    OperationButton(
                      text: '-',
                      fillColor: 0xff2968C7,
                      textColor: 0xffffffff,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: '3',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: '2',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: '1',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    OperationButton(
                      text: '+',
                      fillColor: 0xff2968C7,
                      textColor: 0xffffffff,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: '+/-',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 16,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: '0',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(
                      text: '00',
                      fillColor: 0xff1D2E47,
                      textColor: 0xffffffff,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    OperationButton(
                      text: '=',
                      fillColor: 0xff219595,
                      textColor: 0xFFFFFFFF,
                      textSize: 24,
                      callBack: btnOnClick,
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
