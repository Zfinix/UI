import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seekbar/seekbar.dart';
import 'package:ui/utils/margin.dart';

class PageEight extends StatefulWidget {
  PageEight({Key key}) : super(key: key);

  @override
  _PageEightState createState() => _PageEightState();
}

class _PageEightState extends State<PageEight> {
  var mySystemTheme =
      SystemUiOverlayStyle.light.copyWith(systemNavigationBarColor: Colors.red);
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const YMargin(20),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {},
                ),
                Text('Now playing',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    )),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const YMargin(50),
          Container(
            height: 267,
            width: 270,
            child: Center(
              child: Text('jblce',
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white54,
                        fontSize: 55,
                        letterSpacing: -9),
                  )),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.red[500].withOpacity(0.2),
                      blurRadius: 25,
                      offset: Offset(0, 30),
                      spreadRadius: -14),
                ],
                color: Colors.grey[200],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/3456799/pexels-photo-3456799.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'))),
          ),
          const YMargin(40),
          Text('Water',
              style: GoogleFonts.cabin(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 28,
                ),
              )),
          const YMargin(5),
          Text('JBLCE',
              style: GoogleFonts.cabin(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[500],
                  fontSize: 16,
                ),
              )),
          const YMargin(70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('0:43',
                    style: GoogleFonts.cabin(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )),
                Container(
                  width: screenWidth(context, percent: 0.6),
                  child: SeekBar(
                    value: 0.4,
                    //secondValue: _secondValue,
                    progressColor: Color(0xffff3d00),
                    barColor: Colors.grey.withOpacity(0.4),
                    thumbColor: Color(0xffff3d00),
                    progressWidth: 3.3,
                    thumbRadius: 7,
                    //secondProgressColor: Colors.blue.withOpacity(0.5),
                    onStartTrackingTouch: () {},
                    onProgressChanged: (_value) {},
                    onStopTrackingTouch: () {},
                  ),
                ),
                Text('3:13',
                    style: GoogleFonts.cabin(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )),
              ],
            ),
          ),
           Spacer(),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkResponse(
                  child: Image.asset(
                    'assets/images/back.png',
                    scale: 6.7,
                  ),
                  onTap: () {},
                ),
                const XMargin(45),
                InkResponse(
                  child: Image.asset(
                    'assets/images/play.png',
                    scale: 4.5,
                  ),
                  onTap: () {},
                ),
                const XMargin(45),
                InkResponse(
                  child: Image.asset(
                    'assets/images/forward.png',
                    scale: 6.7,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ), const YMargin(120)
        ],
      ),
    );
  }
}
