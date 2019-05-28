import 'package:flutter/material.dart';
import 'package:kenya_app/utils/my_colors.dart';

class CarOwnersDetails extends StatefulWidget {
  @override
  _CarOwnersDetailsState createState() => _CarOwnersDetailsState();
}

class _CarOwnersDetailsState extends State<CarOwnersDetails> {

  bool _first = false;
  bool _second = true;
  bool _third = false;
  bool _forth = false;

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
            SizedBox(
              height: 50,
            ),
            Container(
                width: double.infinity,
                height: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ButtonTheme(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: RaisedButton(
                    onPressed: () {
                      _transactionBottomSheet(context);
                    },
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

  void _transactionBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 70,

                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Obstruction", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "ksh",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8)),
                                    TextSpan(
                                        text: "5,000",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                )
                              ],
                            ),
                            Checkbox(value: _first, onChanged: (bool value) {
                              setState(() {
                                _first = !_first;
                              });
                            },)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(height: 1,width: double.infinity,color: Colors.grey,)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 70,

                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Overspeeding", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "ksh",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8)),
                                    TextSpan(
                                        text: "5,000",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                )
                              ],
                            ),
                            Checkbox(value: _second, onChanged: (bool value) {
                              setState(() {
                                _second = !_second;
                              });
                            },)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(height: 1,width: double.infinity,color: Colors.grey,)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 70,

                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("No Drivers License", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "ksh",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8)),
                                    TextSpan(
                                        text: "5,000",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                )
                              ],
                            ),
                            Checkbox(value: _third, onChanged: (bool value) {
                              setState(() {
                                _third = !_third;
                              });
                            },)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(height: 1,width: double.infinity,color: Colors.grey,)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 70,

                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Driving While Using Phone", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "ksh",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8)),
                                    TextSpan(
                                        text: "3,000",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                )
                              ],
                            ),
                            Checkbox(value: _forth, onChanged: (bool value) {
                              setState(() {
                                _forth = !_forth;
                              });
                            },)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(height: 1,width: double.infinity,color: Colors.grey,)
                      ],
                    ),
                  ),
                )

              ]));
        });
  }
}
