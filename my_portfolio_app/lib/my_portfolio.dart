import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio_app/apps/bmicalculatorApp/home_screen.dart';
import 'package:my_portfolio_app/apps/counterApp/counter.dart';
import 'package:my_portfolio_app/apps/dicegameApp/dicegame.dart';
import 'package:my_portfolio_app/apps/i_am_richApp/i_am_rich.dart';
import 'package:my_portfolio_app/apps/quizzApp/quiz_brain.dart';
import 'package:my_portfolio_app/constants.dart';
import 'package:my_portfolio_app/list_cards.dart';
import 'package:my_portfolio_app/list_view.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: bgColor,
      child: ListView(
        children: [
          TextWidgets(
            titleText: 'About me',
            paragraphText:
                '   Hello! My name is Aidaiym.  I am a Flutter Developer! I am looking for a role where I can grow and continue to learn  more new things.',
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80.0),
            ),
          ),
          TextWidgets(
            titleText: 'Education',
            paragraphText:
                ' International University of Central Asia 2020-2024. Bachelor in Informational Technologies',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(80.0),
            ),
          ),
          TextWidgets(
            titleText: 'Skills',
            paragraphText: '  HTML / CSS, Flutter/ Java/Python(Django), Git',
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80.0),
            ),
          ),
          TextWidgets(
            titleText: 'Activities',
            paragraphText: ' Girls in IT 2019-2020 , Python for Everybody',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(80.0),
            ),
          ),
        ],
      ),
    );
  }
}

class MyProjects extends StatelessWidget {
  const MyProjects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListViewConstructor(
          listString: ' Counter App',
          pageRout: (context) => CounterScreen(),
        ),
        ListViewConstructor(
          listString: '"I\'m Rich!" App',
          pageRout: (context) => DiamondPage(),
        ),
        ListViewConstructor(
          listString: 'Dice Game App',
          pageRout: (context) => DiceGame(),
        ),
        ListViewConstructor(
          listString: ' Quizz App',
          pageRout: (context) => QuizPage(),
        ),
        ListViewConstructor(
          listString: ' Xylophone App',
          pageRout: (context) => DiceGame(),
        ),
        ListViewConstructor(
          listString: ' BMI-calculator App',
          pageRout: (context) => HomeScreen(),
        ),
        ListViewConstructor(
          listString: ' Weather App',
          pageRout: (context) => CounterScreen(),
        ),
        ListViewConstructor(
          listString: ' Chat App',
          pageRout: (context) => CounterScreen(),
        ),
        ListViewConstructor(
          listString: ' Flutter App',
          pageRout: (context) => CounterScreen(),
        ),
      ],
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextWidgets(
      titleText: 'Contacts',
      paragraphText: 'https://github.com/aidaiym',
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(0.0),
      ),
    );
  }
}

// Container(
//       child: RichText(
//         text: TextSpan(
//           text: 'Aboout me  ',
//           style: DefaultTextStyle.of(context).style,
//           children: <TextSpan>[
//             TextSpan(
//                 text: 'My name is Aidaiym. I\'m  a Flutter Developer.',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, color: Colors.blue[800])),
//             TextSpan(
//                 text: 'Education',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, color: Colors.blue[800])),
//             TextSpan(
//                 text: 'Skills',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, color: Colors.blue[800])),
//             TextSpan(
//                 text: 'Expirience',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, color: Colors.blue[800])),
//           ],
//         ),
//       ),
//     );