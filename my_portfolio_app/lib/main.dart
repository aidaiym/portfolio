import 'package:flutter/material.dart';
import 'package:my_portfolio_app/constants.dart';
import 'package:my_portfolio_app/my_portfolio.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      home: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: sColor,
            centerTitle: true,
            title: Text('Tursunalieva Aidaiym'),
            bottom:  TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.person),
                ),
                Tab(
                  icon: Icon(Icons.code),
                ),
                Tab(
                  icon: Icon(Icons.contact_page),
                ),
              ],
            ),
          ),
          body:  TabBarView(
            children: <Widget>[
              Center(
                child: AboutMe(),
              ),
              Center(
                child: MyProjects(),
              ),
              Center(
                child: Contacts(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
