import 'package:flutter/material.dart';
import 'package:kenya_app/screens/setup_pin.dart';
import 'package:kenya_app/utils/my_colors.dart';
import 'package:kenya_app/widgets/custom_button.dart';

class SetPinScreen extends StatelessWidget {
  final String regNum;
  Size size;

  SetPinScreen({@required this.regNum});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 150),
            CircleAvatar(
              child: Image.asset("assets/images/member.png"),
              radius: 50,
            ),
            SizedBox(height: 50),
            Text(
              "Maurice Thanos",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            Text(
              regNum,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              "Kabete police post",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 30),
            SizedBox(
                width: 350,
                child: Text(
                  "Imagine a way to effortlessly save for the things you care "
                      "about. Welcome to secured and automated savings",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )),
            SizedBox(height: 90,),
            InkWell(onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SetUpPinScreen()));
            } ,child: CustomButton(width: size.width / 1.2, color: primaryColor, buttonText: 'SET YOUR PIN',))
          ],
        ),
      ),
    );
  }
}
