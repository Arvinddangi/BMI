import 'package:bmicalculatorrr/result_page.dart';
import 'package:bmicalculatorrr/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'result_page.dart';
import 'BottomButton.dart';
import 'CalculatorBrain.dart';

enum Gender {
  all,
  male,
  female,
}
int height = 120;
int weight = 60;
int age = 40;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kACC
                        : kInactiveCardColor,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kACC
                        : kInactiveCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable(
                      onPress: () {},
                      colour: kACC,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kstile,
                              ),
                              Text('cm'),
                            ],
                          ),
                          SliderTheme(
                            data: SliderThemeData(
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 12.0),
                                thumbColor: Colors.blue.shade600,
                                activeTrackColor: Colors.black,
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 40.0)),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120,
                              max: 220,
                              inactiveColor: Color(0xFF58A6FF),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: Reusable(
                    onPress: () {
                      setState(() {});
                    },
                    colour: kACC,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          weight.toString(),
                          style: kstile,
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                )),
                            SizedBox(
                              width: 40.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: Reusable(
                  onPress: () {},
                  colour: kACC,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        age.toString(),
                        style: kstile,
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: age > 0
                                    ? () {
                                        setState(() {
                                          age--;
                                        });
                                      }
                                    : () {},
                              )),
                          SizedBox(
                            width: 40.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: age < 100
                                ? () {
                                    setState(() {
                                      age++;
                                    });
                                  }
                                : () {},
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          BottomButtonWidget(
            buttonTitle: 'Calculate',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(weight: weight, height: height);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultsPage(
                          interpretation: calc.calculateBMI(),
                          bmiResult: calc.getResulit(),
                          resultText: calc.getInterpretation(),
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Color(0xFF12202F),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      disabledElevation: 6.0,
      onPressed: () {
        onPressed();
      },
    );
  }
}
