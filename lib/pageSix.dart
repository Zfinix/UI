import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/utils/margin.dart';

final red = Color(0xffff0032);

class PageSix extends StatefulWidget {
  PageSix({Key key}) : super(key: key);

  @override
  _PageSixState createState() => _PageSixState();
}

class _PageSixState extends State<PageSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0)
                .add(EdgeInsets.symmetric(horizontal: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkResponse(
                      child: Image.asset(
                        'assets/images/menu2.png',
                        scale: 2.5,
                      ),
                      onTap: () {},
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1156437918539571200/a_kmCRe3_400x400.jpg'),
                    )
                  ],
                ),
                const YMargin(38),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Hi Chizi,\nhave a good day!',
                        style: GoogleFonts.cabin(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 27,
                          ),
                        )),
                  ],
                ),
                const YMargin(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('You have two (2) shipments\nplanned for today.',
                        style: GoogleFonts.cabin(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14,
                              height: 1.4),
                        )),
                  ],
                ),
              ],
            ),
          ),
          const YMargin(15),
          Stack(
            children: <Widget>[
              Container(
                height: 189,
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 45),
                width: screenWidth(context),
                decoration: BoxDecoration(
                  color: red,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.redAccent.withOpacity(0.9),
                        blurRadius: 50,
                        offset: Offset(4, 20),
                        spreadRadius: -11),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const YMargin(239),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: 6.4,
                          height: 6.4,
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(40),
                          )),
                      for (var i = 0; i < 3; i++)
                        Container(
                            width: 6,
                            height: 6,
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(40),
                            )),
                    ],
                  )
                ],
              ),
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: screenWidth(context),
                decoration: BoxDecoration(
                  color: red,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 50,
                        offset: Offset(4, 20),
                        spreadRadius: -11),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('Shipment Status',
                              style: GoogleFonts.cabin(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 14,
                                    height: 1.4),
                              )),
                          Spacer(),
                          Text('#DSX2346',
                              style: GoogleFonts.cabin(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 14,
                                    height: 1.4),
                              )),
                        ],
                      ),
                      const YMargin(17),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/images/box.png'),
                          ),
                          const XMargin(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Your shipment is being delivered',
                                  style: GoogleFonts.cabin(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 15),
                                  )),
                              Text('Last Update: 23 min ago.',
                                  style: GoogleFonts.cabin(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white70,
                                        fontSize: 12),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      const YMargin(20),
                      Container(
                        height: 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Theme(
                            data: ThemeData(
                                primaryColor: Color(0xfff6c833),
                                accentColor: Color(0xfff6c833)),
                            child: LinearProgressIndicator(
                              value: 0.6,
                              backgroundColor: Color(0xffe0002c),
                            ),
                          ),
                        ),
                      ),
                      const YMargin(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('Track Your Package',
                              style: GoogleFonts.cabin(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 15,
                                    height: 1.4),
                              )),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 19,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const YMargin(40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Your Activity',
                        style: GoogleFonts.cabin(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[800],
                              fontSize: 18,
                              height: 1.4),
                        ),
                      ),
                    ),
                    const YMargin(9),
                    Container(
                        height: 2,
                        width: 115,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ],
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    Text(
                      'Rating',
                      style: GoogleFonts.cabin(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[900],
                            fontSize: 18,
                            height: 1.4),
                      ),
                    ),
                    const XMargin(10),
                    Text(
                      '4.8',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: red,
                            fontSize: 18,
                            height: 1.4),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1195278901154631680/DKSCC7kC_400x400.jpg'),
                ),
                const XMargin(11),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Yesterday',
                        style: GoogleFonts.cabin(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.grey,
                              fontSize: 13,
                              height: 1.4),
                        )),
                    const YMargin(5),
                    RichText(
                      text: TextSpan(
                          text: 'You have recieved a new rating from\n',
                          style: GoogleFonts.cabin(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 15),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: '💙Obiagu💙',
                                style: GoogleFonts.alata(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ))
                          ]),
                    )
                  ],
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 14,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 5)
                .add(EdgeInsets.only(bottom: 10)),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1206209779212935168/I6NFdelX_400x400.jpg'),
                ),
                const XMargin(11),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('January 4',
                        style: GoogleFonts.cabin(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.grey,
                              fontSize: 13,
                              height: 1.4),
                        )),
                    const YMargin(5),
                    Container(
                      child: RichText(
                        text: TextSpan(
                            text: 'Atarah, the UI Queen\n',
                            style: GoogleFonts.alata(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'accepted your shipment request.',
                                  style: GoogleFonts.cabin(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ))
                            ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 14,
            ),
          )
        ],
      ),
    );
  }
}
