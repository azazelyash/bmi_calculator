import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottonContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xFF2A2B65);
const bottonContainerColor = Color(0xFFEB1555);

enum GenderType {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = cardColor;
  Color femaleCardColor = cardColor;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.Male;
                      });
                      print('Male card was tapped!');
                    },
                    child: ReusableCard(
                      colour: selectedGender == GenderType.Male ? activeCardColor : cardColor,
                      cardChild: CardContent(
                        genderIcon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.Female;
                      });
                      print('Female card was tapped!');
                    },
                    child: ReusableCard(
                      cardChild: CardContent(
                        genderIcon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      colour: selectedGender == GenderType.Female? activeCardColor : cardColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottonContainerColor,
            margin: EdgeInsets.only(top: 15.0),
            width: double.infinity,
            height: bottonContainerHeight,
          )
        ],
      ),
    );
  }
}
