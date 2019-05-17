import 'package:flutter/material.dart';

class SetUpPinScreen extends StatefulWidget {
  @override
  _SetUpPinScreenState createState() => _SetUpPinScreenState();
}

class _SetUpPinScreenState extends State<SetUpPinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setup Pin'),
      ),
      body: Column(
        children: <Widget>[
          Text("Pleas enter your Security pin")
        ],
      ),
    );
  }
}
