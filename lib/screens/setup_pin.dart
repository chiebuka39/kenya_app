import 'package:flutter/material.dart';
import 'package:kenya_app/utils/my_colors.dart';

class SetUpPinScreen extends StatefulWidget {
  @override
  _SetUpPinScreenState createState() => _SetUpPinScreenState();
}

class _SetUpPinScreenState extends State<SetUpPinScreen> {
  int _firstPin, _secondPin, _thirdPin, _forthPin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setup Pin'),
      ),
      body: Column(
        children: <Widget>[
           SizedBox(height: 20),
          Text("Pleas enter your Security pin"),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Container(
                color: Colors.black,
                width: 50,
                
              )
            ],
          )
        ],
      ),
    );
  }
}
