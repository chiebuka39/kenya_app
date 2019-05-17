import 'package:flutter/material.dart';
import 'package:kenya_app/screens/set_pin.dart';
import 'package:kenya_app/utils/my_colors.dart';
import 'package:kenya_app/widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height / 2,
            color: primaryColor,
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 170,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Welcome',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        SizedBox(
                            width: size.width / 1.5,
                            child: Text(
                              'Imagine a way to effortlessly save for the things you care about. Welcome to secured and automated savings',
                              style: TextStyle(fontSize: 11, color: Colors.white, height: 1.3),
                            )),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: size.width / 1.2,
                  height: 170,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Column(

                    children: <Widget>[
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: <Widget>[
                            Text('Reg Number', style: TextStyle(color: primaryColor),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(keyboardType: TextInputType.number,),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SetPinScreen(regNum: "21112341123",)));
                },
                child: CustomButton(width: (size.width / 1.2),color: primaryColor, buttonText: 'LOGIN',),
              )
            ],
          )
        ],
      ),
    );
  }
}
