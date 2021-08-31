import 'package:flutter/material.dart';
import 'constants.dart';



class BottomButtonWidget extends StatelessWidget {
BottomButtonWidget ({required this.onTap, required this.buttonTitle});

final Function onTap;
final String buttonTitle;

@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: (){onTap();},
    child: Container(
      child: Center(child: Text(buttonTitle,
        style: kstile,)),
      color: kBCC,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10.0),
      height: kBottomContainerHeight,
    ),
  );
}
}
