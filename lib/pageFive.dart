import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:ui/utils/margin.dart';

class PageFive extends StatefulWidget {
  PageFive({Key key}) : super(key: key);

  @override
  _PageFiveState createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Image.asset(
          'assets/images/logo.png',
          scale: 3,
        ),
      ),
      body: Column(
        children: <Widget>[
          const YMargin(30),
          Container(
            height: screenHeight(
              context,
              percent: 0.341,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(top: 30, left: 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/circlez.png')),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Image.asset('assets/images/bike.png', scale: 3),
                ),
              ],
            ),
          ),
          const YMargin(30),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300].withOpacity(0.9),
                          blurRadius: 16,
                          spreadRadius: -3),
                    ],
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('\$23',
                          style: GoogleFonts.russoOne(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                              fontSize: 21,
                            ),
                          )),
                      const YMargin(3),
                      Text('/HOUR',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[500],
                              letterSpacing: 1.3,
                              fontSize: 11,
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35),
            child: Row(
              children: <Widget>[
                Container(
                  width: screenWidth(context) - 75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('TCR Advanced 3-DA',
                          style: GoogleFonts.lalezar(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 32,
                            ),
                          )),
                      Text('Performance / On-Road',
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                              fontSize: 19,
                            ),
                          )),
                      const YMargin(20),
                      Text(
                          'The most efficient race bikes have the perfect balance of light weight, stiffness and smooth compliance on the road. The TCR Advanced delivers on all three, making it a versatile performer for competitive road riders.',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                                fontSize: 13,
                                height: 1.4),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 110,
              width: 110,
              child: Stack(
                children: <Widget>[
                  Image.asset('assets/images/fab.png', scale: 0.02),
                  Center(
                    child: Container(
                      height: 50,
                      child: FloatingActionButton(
                          backgroundColor: Colors.black,
                          onPressed: () {},
                          child: Icon(Icons.directions_bike)),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
