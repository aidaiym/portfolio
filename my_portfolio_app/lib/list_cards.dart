import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_app/constants.dart';

class TextWidgets extends StatelessWidget {
  TextWidgets({
    this.borderRadius,
    this.paragraphText,
    this.titleText,
    Key key,
  }) : super(key: key);

  BorderRadius borderRadius;
  String titleText;
  String paragraphText;
  Widget activitiesImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: borderRadius,
          boxShadow: [
            new BoxShadow(
              color: bgColor.withOpacity(0.5),
              offset: new Offset(-10.0, 0.0),
              blurRadius: 20.0,
              spreadRadius: 4.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                titleText,
                style: titleTextStyle,
              ),
              Text(
                paragraphText,
                style: h2TextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
