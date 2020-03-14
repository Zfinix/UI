import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/utils/margin.dart';

class PageTwo extends StatefulWidget {
  PageTwo({
    Key key,
  }) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: <Widget>[
        Container(
          color: Colors.red,
          child: Column(
            children: <Widget>[
              const YMargin(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () => print('Tap Here onTap'),
                    color: Colors.white,
                    iconSize: 28,
                    icon: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Icon(CupertinoIcons.search)),
                  ),
                  XMargin(20),
                  IconButton(
                    onPressed: () {},
                    icon: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (var i = 0; i < 2; i++)
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(2),
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(1)),
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(1)),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  XMargin(20),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  XMargin(50),
                  RichText(
                    text: TextSpan(
                        text: 'Italian',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w200)),
                        children: [
                          TextSpan(
                              text: ' Pasta',
                              style: GoogleFonts.dMSerifDisplay(
                                  textStyle: TextStyle(
                                      letterSpacing: 3,
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600)))
                        ]),
                  ),
                ],
              ),
              const YMargin(50),
              Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              XMargin(50),
                              Icon(CupertinoIcons.clock, color: Colors.white),
                              XMargin(20),
                              Text(
                                '54 MINS',
                                style: TextStyle(color: Colors.white),
                              ),
                              XMargin(40),
                            ],
                          ),
                          YMargin(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              XMargin(50),
                              Icon(CupertinoIcons.person, color: Colors.white),
                              XMargin(20),
                              Text(
                                '3 PEOPLE',
                                style: TextStyle(color: Colors.white),
                              ),
                              XMargin(40),
                            ],
                          ),
                          YMargin(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              XMargin(50),
                              Icon(CupertinoIcons.heart, color: Colors.white),
                              XMargin(20),
                              Text(
                                '54 CALORIES',
                                style: TextStyle(color: Colors.white),
                              ),
                              XMargin(40),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/food1.png',
                        scale: 2,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 500),
          width: screenWidth(context),
          decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Column(
            children: <Widget>[
              const YMargin(10),
              Container(
                  margin: EdgeInsets.all(10),
                  height: 8,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10))),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const XMargin(10),
                        Text('Directions',
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15),
                            )),
                      ],
                    ),
                    const YMargin(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 7, right: 20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 5,
                                width: 5,
                                color: Colors.redAccent,
                              )),
                        ),
                        Container(
                          width: screenWidth(context, percent: 0.7),
                          child: Text(
                            'Pick a roomy pot that gives the pasta plenty of space to move around in. This is a good time to call that eight-or 12-quart stockpot into action.',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 15,
                                height: 1.4,
                                color: Colors.blueGrey.shade500),
                          ),
                        ),
                      ],
                    ),
                    YMargin(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 7, right: 20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 5,
                                width: 5,
                                color: Colors.redAccent,
                              )),
                        ),
                        Container(
                          width: screenWidth(context, percent: 0.7),
                          child: Text(
                            'Load up the pot with lots of waterYou want five or six quarts of water for a standard 16 oz. package of pasta.',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 15,
                                height: 1.4,
                                color: Colors.blueGrey.shade500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
