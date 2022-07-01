import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          shape: Border(
              bottom: BorderSide(color: const Color(0xFF16171D), width: 0)),
          title: Text('Markets'),
          centerTitle: false,
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Text(
                'Market Page',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
