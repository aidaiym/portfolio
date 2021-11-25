import 'package:flutter/material.dart';

class ListViewConstructor extends StatelessWidget {
  const ListViewConstructor({this.listString, this.pageRout, Key key})
      : super(key: key);
  final String listString;
  final Function pageRout;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('assets/images/logo_flutter.jpg'), 
      ),
      title: Text(
        listString,
        style: TextStyle(fontSize: 20),
      ),
      trailing: Icon(Icons.keyboard_arrow_right_sharp),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: pageRout,
          ),
        );
      },
    );
  }
}
