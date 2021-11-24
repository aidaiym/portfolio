import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio_app/apps/bmicalculatorApp/home_screen.dart';
import 'package:my_portfolio_app/apps/counterApp/counter.dart';
import 'package:my_portfolio_app/apps/dicegameApp/dicegame.dart';
import 'package:my_portfolio_app/apps/i_am_richApp/i_am_rich.dart';
import 'package:my_portfolio_app/apps/quizzApp/quiz_brain.dart';
import 'package:my_portfolio_app/apps/xylophoneApp/xylophone.dart';
import 'package:my_portfolio_app/list_cards.dart';
import 'package:my_portfolio_app/list_view.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool _isAlwaysShown = true;

    bool _showTrackOnHover = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Scrollbar(
            isAlwaysShown: _isAlwaysShown,
            showTrackOnHover: _showTrackOnHover,
            hoverThickness: 30.0,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => MyItem(index),
            ),
          ),
        ),
        Divider(height: 1),
      ],
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
          pageRout: (context) => XylophoneApp(),
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
    return Container();
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