import 'package:flutter/material.dart';
import 'package:kenya_app/screens/car_owner_details.dart';
import 'package:kenya_app/utils/my_colors.dart';

class ChargeOffenderScreen extends StatefulWidget {
  @override
  _ChargeOffenderScreenState createState() => _ChargeOffenderScreenState();
}

class _ChargeOffenderScreenState extends State<ChargeOffenderScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  String _regNumber;
  String _driversLicenseNumber;
  bool _autoValidate = false;
  bool _isLoading = false;

   String validateField(String value) {
    if (value == null || value.isEmpty) return 'This field is required';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,iconTheme: IconThemeData(color: Colors.black),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          SizedBox(height: 20,),
          Text("Charge Offender", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),),
          SizedBox(height: 10,),
            Text("Please enter vehicle registration number to view Details", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
          SizedBox(height: 50,),
          Theme(
          data: Theme.of(context).copyWith(
          primaryColor: primaryColor,
          errorColor: Colors.redAccent,
          splashColor: Colors.transparent,
          hintColor: primaryColor,
          unselectedWidgetColor: Colors.grey),
        child: Form(
            autovalidate: _autoValidate,
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Registration Number',
                      labelStyle: TextStyle(fontSize: 15.0)),
                  validator: (val) => validateField(val),
                  onSaved: (value) {
                    _regNumber = value;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Drivers License Number',
                      labelStyle: TextStyle(fontSize: 15.0)),
                  validator: (val) => validateField(val),
                  onSaved: (value) {
                    _driversLicenseNumber = value;
                  },
                ),
                SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0)),
                      ),
                      color: primaryColor,
                      splashColor: primaryColor,
                      highlightColor: primaryColor,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: _isLoading
                            ? Container(
                          width: 35.0,
                          height: 35.0,
                          child: Theme(
                              data: Theme.of(context)
                                  .copyWith(
                                  accentColor:
                                  Colors.white),
                              child:
                              CircularProgressIndicator()),
                        )
                            : Text(
                          "Check Car Details",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CarOwnersDetails()));
                      }),
                ),
              ],
            ))),
        ],),
      ),
    );
  }
}
