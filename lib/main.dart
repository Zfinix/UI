import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/pageTwo.dart';
import 'package:ui/utils/margin.dart';

import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.quicksandTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        const YMargin(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () => print('Tap Here onTap'),
              color: Colors.black,
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
                              border:
                                  Border.all(width: 1.2, color: Colors.black),
                              borderRadius: BorderRadius.circular(1)),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.2, color: Colors.black),
                              borderRadius: BorderRadius.circular(1)),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            XMargin(20)
          ],
        ),
        YMargin(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            XMargin(50),
            RichText(
              text: TextSpan(
                  text: 'Break',
                  style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.w200)),
                  children: [
                    TextSpan(
                        text: 'fast',
                        style: GoogleFonts.dMSerifDisplay(
                            textStyle: TextStyle(
                                letterSpacing: 3,
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.w600)))
                  ]),
            ),
          ],
        ),
        const YMargin(50),
        SectionTwo(),
        Container(
          height: 90,
          width: screenWidth(context),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              const XMargin(10),
              Image.asset(
                'assets/images/settings.png',
                scale: 2.4,
              ),
              BottomTab(
                title: 'Beer',
              ),
              const XMargin(30),
              BottomTab(
                isSelected: true,
                title: 'Foods',
              ),
              const XMargin(30),
              BottomTab(
                title: 'Wine',
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class BottomTab extends StatelessWidget {
  final isSelected;
  final String title;
  const BottomTab({Key key, this.isSelected = false, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 90,
      child: Center(
        child: Text(title ?? '',
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: isSelected ? Colors.white : Colors.blueGrey.shade200),
            )),
      ),
      decoration: BoxDecoration(
          color: isSelected ? red : Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(24)),
    );
  }
}

class SectionTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: screenHeight(context, percent: 0.56),
            child: Column(
              children: <Widget>[
                TabWidget(
                  title: 'Bread',
                  isCurrent: true,
                ),
                TabWidget(title: 'Noodles'),
                TabWidget(title: 'Seafood'),
              ],
            ),
          ),
          Container(
            height: screenHeight(context, percent: 0.5),
            width: screenWidth(context, percent: 0.8),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                const XMargin(20),
                CardOne(),
                CardTwo(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardOne extends StatelessWidget {
  const CardOne({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: ()=>
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PageTwo(),
          ),
        ),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            height: screenHeight(context, percent: 0.45),
            width: screenWidth(context, percent: 0.5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    blurRadius: 23,
                    offset: Offset(24, 5),
                    spreadRadius: -11),
              ],
              color: Colors.black87,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.redAccent.withOpacity(0.9),
                    blurRadius: 16,
                    offset: Offset(4, 10),
                    spreadRadius: -8),
              ],
              color: red,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.favorite,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 120, top: 50),
              child: Image.asset(
                'assets/images/food1.png',
                scale: 3.3,
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.all(30).add(EdgeInsets.only(
                  bottom: 10,
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 9,
                                width: 9,
                                color: Colors.redAccent,
                              )),
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Italian',
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w200)),
                                children: [
                              TextSpan(
                                  text: '\nPasta',
                                  style: GoogleFonts.dMSerifDisplay(
                                      textStyle: TextStyle(
                                          letterSpacing: 3,
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600)))
                            ])),
                      ],
                    ),
                    const YMargin(10),
                    Container(
                        margin: EdgeInsets.all(10),
                        width: screenWidth(context, percent: 0.4),
                        child: Text(
                            'Pasta is a type of Italian food typically made from an unleavened dough of durum wheat flour mixed with water or eggs.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.3,
                                fontWeight: FontWeight.w100)))
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: screenHeight(context, percent: 0.5),
            width: screenWidth(context, percent: 0.5),
          )
        ],
      ),
    );
  }
}

class CardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            height: screenHeight(context, percent: 0.45),
            width: screenWidth(context, percent: 0.5),
            decoration: BoxDecoration(
                color: Color(0xfffad3ca),
                borderRadius: BorderRadius.circular(30))),
      ],
    );
  }
}

class TabWidget extends StatelessWidget {
  final bool isCurrent;
  final String title;
  const TabWidget({
    Key key,
    this.title,
    this.isCurrent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: <Widget>[
            Text(
              title ?? '',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 13,
                  color: isCurrent ? Colors.black : Colors.blueGrey.shade200),
            ),
            const YMargin(8),
            isCurrent
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 4,
                      width: 4,
                      color: Colors.redAccent,
                    ))
                : Container()
          ],
        ),
      ),
      angle: -math.pi / 2,
    );
  }
}
