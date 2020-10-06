import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'big_red_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiNumber;
  final String bmiText;
  final String bmiStatus;

  ResultsPage(
      {@required this.bmiNumber,
      @required this.bmiStatus,
      @required this.bmiText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10.0, top: 20.0),
              child: Text(
                'Your Result',
                style: kStyleTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colors: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    bmiStatus,
                    style: kStatusText,
                  ),
                  Text(
                    bmiNumber,
                    style: TextStyle(
                      fontSize: 90.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiText,
                    style: kStyleText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BigRedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            text: 'RE - CALCULATE',
          ),
        ],
      ),
    );
  }
}
