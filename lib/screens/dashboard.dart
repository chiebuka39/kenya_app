import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kenya_app/utils/my_colors.dart';
import 'package:kenya_app/utils/my_dimensions.dart';
import 'package:kenya_app/widgets/dots_indicator.dart';
import 'package:kenya_app/widgets/opaque_white_circle.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key}) : super(key: key);

  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final PageController controller = PageController(initialPage: 0);
  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  // final pageView = ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(

                  decoration: BoxDecoration(
                    color: primaryColor,
                      image: DecorationImage(
                          image: ExactAssetImage(
                              'assets/images/dash_bg_icons.png'))),
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        height: 150,
                        width: double.infinity,
                        child: PageView(
                          controller: controller,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  'Current fine Collected',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "KSH",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "73,000",
                                        style: TextStyle(
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold))
                                  ]),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  'Current fiene Collected 2',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "KSH",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "73,000",
                                        style: TextStyle(
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold))
                                  ]),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  'Current fiene Collected 3',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "KSH",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "73,000",
                                        style: TextStyle(
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold))
                                  ]),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: DotsIndicator(
                        controller: controller,
                        itemCount: 3,
                        onPageSelected: (int page) {
                          controller.animateToPage(page,
                              curve: _kCurve, duration: _kDuration);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                      ),
                      Material(
                        elevation: 6,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                        child: Container(
                          width: 170,
                          height: containerHeight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "assets/svg/handcuffs.svg",
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Charge Offender',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                              width: 140,
                                              child: Text(
                                                'View and manage your insurance',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                                textAlign: TextAlign.end,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                OpaqueCircle()
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: <Color>[
                                    Color(0xFFFF9350),
                                    Color(0xFF3A7DEB)
                                  ])),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Material(
                        elevation: 6,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                        child: Container(
                          width: 170,
                          height: containerHeight,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "assets/svg/protect.svg",
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Fine Payments',
                                            style: TextStyle(
                                                fontSize: containerMainText,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                              width: 150,
                                              child: Text(
                                                'View all fine payments',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: containerSubText),
                                                textAlign: TextAlign.end,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                OpaqueCircle()
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: <Color>[
                                    Color(0xFF387CA3),
                                    Color(0xFF5CC19E)
                                  ])),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                      ),
                      Material(
                        elevation: 6,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                        child: Container(
                          width: 170,
                          height: containerHeight,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "assets/svg/target.svg",
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'My Targets',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: containerMainText,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                              width: 150,
                                              child: Text(
                                                'See all your targets for the months',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: containerSubText),
                                                textAlign: TextAlign.end,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                OpaqueCircle()
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: <Color>[
                                    Color(0xFF003399),
                                    Color(0xFF3A7DEB)
                                  ])),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Material(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                        elevation: 6,
                        child: Container(
                          width: 170,
                          height: containerHeight,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            "assets/svg/notebook-paper-todo.svg",
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Charge sheets',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: containerMainText,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          SizedBox(
                                              width: 150,
                                              child: Text(
                                                'View and manage your Charge sheets',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: containerSubText),
                                                textAlign: TextAlign.end,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                OpaqueCircle()
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: <Color>[
                                    Color(0xFF507FFF),
                                    Color(0xFF5E0099)
                                  ])),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),

                  SizedBox(height: 100,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
