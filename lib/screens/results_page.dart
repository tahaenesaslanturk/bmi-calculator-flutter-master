import 'file:///D:/myapps/appbraweryCourse/bmi-calculator-flutter-master/lib/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String number;
  String shortText;
  String longText;

  ResultPage({this.longText, this.number, this.shortText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Results Page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kBigTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActivecardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      shortText.toUpperCase(),
                      style: kTextStyle.copyWith(
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      number,
                      style: kBigTextStyle.copyWith(
                        fontSize: 100.0,
                      ),
                    ),
                    Text(
                      longText,
                      style: kTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomCustomButton(
                text: "RECALCULATE",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ));
  }
}
