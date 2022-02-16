import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum GenderType {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kCardColor;
  Color femaleCardColor = kCardColor;

  GenderType? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.Male;
                      });
                    },
                    colour: selectedGender == GenderType.Male
                        ? kActiveCardColor
                        : kCardColor,
                    cardChild: CardContent(
                      genderIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.Female;
                      });
                    },
                    cardChild: CardContent(
                      genderIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    colour: selectedGender == GenderType.Female
                        ? kActiveCardColor
                        : kCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottonContainerColor,
            margin: EdgeInsets.only(top: 15.0),
            width: double.infinity,
            height: kBottonContainerHeight,
          )
        ],
      ),
    );
  }
}
