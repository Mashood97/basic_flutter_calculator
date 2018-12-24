import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CalculatorState();
  }

}

class CalculatorState extends State<Calculator> {
  final TextEditingController _numberOne = new TextEditingController();
  final TextEditingController _numberTwo = new TextEditingController();
  double numberOne = 0;
  double numberTwo = 0;
  double result = 0;

  void _Addition() {
    setState(() {
      if (_numberOne.text.isNotEmpty && _numberTwo.text.isNotEmpty) {
        result = double.parse(_numberOne.text.toString()) + double.parse(_numberTwo.text.toString()) ;
      }
      else {
        result = 0;
      }
    });
  }

  void _Substraction() {
    setState(() {
      if (_numberOne.text.isNotEmpty && _numberTwo.text.isNotEmpty) {
        result = double.parse(_numberOne.text.toString()) -
            double.parse(_numberTwo.text.toString());
      }
      else {
        result = 0;
      }
    });
  }

  void _Multiply()
  {
    setState(() {
      if (_numberOne.text.isNotEmpty && _numberTwo.text.isNotEmpty) {
        result = double.parse(_numberOne.text.toString()) *
            double.parse(_numberTwo.text.toString());
      }
      else {
        result = 0;
      }
    });
  }

  void _Division()
  {
    setState(() {
      if (_numberOne.text.isNotEmpty && _numberTwo.text.isNotEmpty) {
       result = double.parse(_numberOne.text.toString()) / double.parse(_numberTwo.text.toString());
      }
      else {
        result = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: new Container(
        alignment: Alignment.center,
        child: new ListView (
            children: <Widget>[
            new TextField(
              controller: _numberOne,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter the First Number",
                icon: new Icon(Icons.confirmation_number),

              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              controller: _numberTwo,
              decoration: new InputDecoration(
                hintText: "Enter Second Number",
                icon: new Icon(Icons.confirmation_number),
              ),
            ),

            new Padding(
                padding: EdgeInsets.all(15.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Your Answer is: $result",
                  style: new TextStyle(color: Colors.black, fontSize: 16.9),),
              ],
            ),

            new Padding(padding: new EdgeInsets.all(10.5)),
            new Center(
              child: new Row(
                children: <Widget>[
                  //button for addition
                  new Container(
                    margin: const EdgeInsets.only(left: 38.0),
                    child: new RaisedButton(
                      onPressed: () => _Addition(),
                      color: Colors.redAccent,
                      child: new Text("Addition",
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16.9,
                        ),
                      ),
                    ),
                  ),

                  //subtraction Button

                  new Container(
                    margin: const EdgeInsets.only(left: 70.0),
                    child: new RaisedButton(
                      onPressed: () => _Substraction(),
                      color: Colors.purple,
                      child: new Text("Subtract",
                        style: new TextStyle(color: Colors.white,
                            fontSize: 16.9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Padding(padding: new EdgeInsets.all(20.0)),
            new Center(
              child: new Row(
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(left: 38.0),
                    child: new RaisedButton(onPressed:()=> _Multiply(),
                      color: Colors.red,
                      child: new Text("Multiply",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 16.9
                        ),),),
                  ),

                  new Container(
                    margin: const EdgeInsets.only(left: 70.0),
                    child: new RaisedButton(onPressed: () => _Division(),
                      color: Colors.yellow,
                      child: new Text("Divisions", style: new TextStyle(
                          color: Colors.white, fontSize: 16.9),
                      ),
                    ),
                  ),//container for division button ended
                ],//row children widget ended
              ),//row ended
            ),//center ended
          ], //list view children ended
        ), // list view ended
      ), //list view container ended

    );//sacffold end
  }

}