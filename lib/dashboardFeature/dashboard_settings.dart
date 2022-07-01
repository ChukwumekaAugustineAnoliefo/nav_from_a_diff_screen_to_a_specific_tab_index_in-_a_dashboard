import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
            bottom: BorderSide(color: const Color(0xFF16171D), width: 0)),
        elevation: 0,
        title: Text(''),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.bell),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Notifications()));

              // do something
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Text(
              'Settings Page',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
