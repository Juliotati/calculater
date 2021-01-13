import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculater',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black))),
      home: MyHomePage(
          title: Center(
              child: Text('calculater 🔢', style: GoogleFonts.graduate()))),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});
  final Widget title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String result = '0';
  String input = '0';
  String expression = '';

  computeInput(String buttonText) {
    setState(() {
      if (buttonText == 'DEL') {
        input = input.substring(0, input.length - 1);
        if (input == '') {
          input = '0';
          result = '0';
        }
      } else if (buttonText == '=') {
        expression = input;
        expression = expression.replaceAll('X', '*');
        expression = expression.replaceAll('%', '⁒');

        Parser p = Parser();
        Expression exp = p.parse(expression);
        ContextModel cm = ContextModel();
        result = '${exp.evaluate(EvaluationType.REAL, cm)}';
      } else if (buttonText == 'AC') {
        result = '0';
        input = '0';
      } else if (buttonText == 'Ans') {
      } else {
        if (input == '0') {
          input = buttonText;
        } else {
          input = input + buttonText;
        }
      }
    });
  }

  Widget buttonWidget(String buttonText) {
    return Padding(
      padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 4.0, bottom: 8.0),
      child: RawMaterialButton(
        child: Text(
          buttonText,
          style: GoogleFonts.pressStart2p(fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        constraints: BoxConstraints(minHeight: 50, minWidth: 70),
        fillColor: Colors.white,
        hoverColor: Colors.blue,
        splashColor: Colors.blueGrey,
        disabledElevation: 2.0,
        focusElevation: 1.0,
        highlightElevation: 0.0,
        onPressed: () {
          computeInput(buttonText);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: widget.title,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Column(
            verticalDirection: VerticalDirection.up,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonWidget('0'),
                  buttonWidget('.'),
                  buttonWidget('Ans'),
                  buttonWidget('='),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonWidget('1'),
                  buttonWidget('2'),
                  buttonWidget('3'),
                  buttonWidget('-'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonWidget('4'),
                  buttonWidget('5'),
                  buttonWidget('6'),
                  buttonWidget('+'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonWidget('7'),
                  buttonWidget('8'),
                  buttonWidget('9'),
                  buttonWidget('X'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonWidget('%'),
                  buttonWidget('AC'),
                  buttonWidget('DEL'),
                  buttonWidget('/'),
                ],
              ),
              SizedBox(height: 13),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[200],
                ),
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 15.0, bottom: 8.0, left: 10.0, right: 20),
                    child: Text(
                      result,
                      style: GoogleFonts.pressStart2p(fontSize: 35),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Divider(height: 1, color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[200],
                ),
                margin: EdgeInsets.all(10.0),
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 15.0, bottom: 8.0, left: 10.0, right: 20),
                    child: Text(
                      input,
                      style: GoogleFonts.pressStart2p(fontSize: 25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
