import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homepage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
//  @override

}

class _homePageState extends State<homepage> {
  int activeIndex = 0;

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
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.bell),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Dashboard Page',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
