import 'package:flutter/material.dart';

import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  Calculator({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Calculator createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  controller: text,
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),

                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        text.text = "";
                      },
                      child: Text("C",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "%";
                      },
                      child: Text("%",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text =
                            text.text.substring(0, text.text.length - 1);
                      },
                      child: Icon(Icons.backspace_outlined,color: Colors.white,),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "/";
                      },
                      child: Text("/",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        text.text += "7";
                      },
                      child: Text("7",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "8";
                      },
                      child: Text("8",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "9";
                      },
                      child: Text("9",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "*";
                      },
                      child: Text("x",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        text.text += "4";
                      },
                      child: Text("4",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "5";
                      },
                      child: Text("5",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "6";
                      },
                      child: Text("6",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "-";
                      },
                      child: Text("-",
                          style: TextStyle(color: Colors.white, fontSize: 28)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        text.text += "1";
                      },
                      child: Text("1",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "2";
                      },
                      child: Text("2",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "3";
                      },
                      child: Text("3",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "+";
                      },
                      child: Text("+",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        text.text += "00";
                      },
                      child: Text("00",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += "0";
                      },
                      child: Text("0",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(
                      onPressed: () {
                        text.text += ".";
                      },
                      child: Text(".",
                          style: TextStyle(color: Colors.white, fontSize: 28)),
                      height: 75,
                      minWidth: 90,
                      color: Colors.black,
                    ),
                    FlatButton(

                      onPressed: () {
                        setState(() {
                          Parser x = new Parser();
                          String y = x
                              .parse(text.text)
                              .evaluate(EvaluationType.REAL, null)
                              .toString();
                          double z = double.parse(y);
                          int q = z.toInt();
                          text.text = q.toString();
                          print(z);
                        });
                      },
                      child: Text("=",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      height: 75,
                      minWidth: 90,

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
