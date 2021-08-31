import 'package:bmicalculatorrr/BottomButton.dart';
import 'package:bmicalculatorrr/constants.dart';
import 'package:bmicalculatorrr/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult,required this.interpretation,required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 30.0),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  'YOUR RESULT',
                  style: kstile,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: (Reusable(
              onPress: () {},
              colour: kACC,
              cardChild: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      resultText,
                      textAlign: TextAlign.center,
                      style: kstile,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      bmiResult,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 70.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Divider(thickness: 5.0,
                  color: Colors.white,
                  indent: 40.0,
                  endIndent: 40.0,)
                ],
              ),
            )),
          ),
          BottomButtonWidget(onTap: (){
            Navigator.pop(context);
          }, buttonTitle : 'Re-Calculate'),
        ],
      ),
    );
  }
}
