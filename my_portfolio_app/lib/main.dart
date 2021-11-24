import 'package:flutter/material.dart';
import 'package:my_portfolio_app/my_portfolio.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      home: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple[700],
            centerTitle: true,
            title: Text('Tursunalieva Aidaiym'),
            bottom: const TabBar(
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
          body: const TabBarView(
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
    ),
  );
}
