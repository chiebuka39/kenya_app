import 'package:flutter/material.dart';
import 'package:kenya_app/utils/my_colors.dart';

class CarOwnersDetails extends StatefulWidget {
  @override
  _CarOwnersDetailsState createState() => _CarOwnersDetailsState();
}

class _CarOwnersDetailsState extends State<CarOwnersDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFBFD),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Car Owner Details",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              height: 120,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 20),
                  Image.asset("assets/images/kenya_person.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      Text(
                        "Agege Egbebe",
                        style: TextStyle(
                            color: Color(0xFF232846),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "00682634200",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("6975-WYT", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Age: 34 Years old", style: TextStyle(fontSize: 12)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Gender: Male", style: TextStyle(fontSize: 12)),
                      Spacer()
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 140,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Previous Offense",
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("21st-Dec-2017 - Drunk and Driving"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("1st-Jan-2018 - Disobey traffic rules"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("15th-Jan-2018 - Over-speerding"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ButtonTheme(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Charge Offender",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: primaryColor,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
