import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_app/apps/bmicalculatorApp/circular_button.dart';
import 'package:my_portfolio_app/apps/bmicalculatorApp/constants.dart';

class WeightHeightWidget extends StatelessWidget {
  const WeightHeightWidget({
    @required this.title,
    @required this.increment,
    @required this.decrement,
    this.weight,
    this.age,
    Key key,
  }) : super(key: key);

  final String title;
  final String weight;
  final String age;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: titleTextStyle,
          ),
          weight != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      weight,
                      style: numberTextStyle,
                    ),
                    Text(' kg'),
                  ],
                )
              : Text(
                  age,
                  style: numberTextStyle,
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTap: decrement,
                child: Icon(FontAwesomeIcons.minus),
              ),
              const SizedBox(width: 5.0),
              CustomButton(
                onTap: increment,
                child: Icon(FontAwesomeIcons.plus),
              ),
            ],
          ),
        ],
      ),
    );
  }
}